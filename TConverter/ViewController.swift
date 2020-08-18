//
//  ViewController.swift
//  TConverter
//
//  Created by Maxim Bekmetov on 18.08.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let fahrenheitTemperature = Int(round(sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
        
    }
    
}

