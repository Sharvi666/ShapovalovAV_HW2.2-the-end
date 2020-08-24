//
//  ViewController.swift
//  ShapovalovAV_HW2.2
//
//  Created by Arthur on 22.08.2020.
//  Copyright © 2020 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRGB: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        viewRGB.backgroundColor = .none
        actionsWithRedSlider()
        actionsWithGreenSlider()
        actionsWithBlueSlider()
        
        
    }
    
    @IBAction func redSliderAction() {
        let sliderValue = CGFloat(redSlider.value)
        redValueLabel.text = String(NSString(format: "%.2f", redSlider.value))
        viewRGB.backgroundColor = .red
        viewRGB.backgroundColor = viewRGB.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    @IBAction func greenSliderAction() {
        let sliderValue = CGFloat(greenSlider.value)
        greenValueLabel.text = String(NSString(format: "%.2f", greenSlider.value))
        viewRGB.backgroundColor = .green
        viewRGB.backgroundColor = viewRGB.backgroundColor?.withAlphaComponent(sliderValue)

        
    }
    
    @IBAction func blueSliderAction() {
        let sliderValue = CGFloat(blueSlider.value)
        blueValueLabel.text = String(NSString(format: "%.2f", blueSlider.value))
        viewRGB.backgroundColor = .blue
        viewRGB.backgroundColor = viewRGB.backgroundColor?.withAlphaComponent(sliderValue)

    }
    
    private func actionsWithRedSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.minimumValue = 0
        redSlider.value = 0.05
        redValueLabel.text = String(0.05)
        redSlider.maximumValue = 1
        
    }
    
    private func actionsWithGreenSlider() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.minimumValue = 0
        greenSlider.value = 0.27
        greenValueLabel.text = String(0.27)
        greenSlider.maximumValue = 1
        
    }
    
    private func actionsWithBlueSlider() {
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.minimumValue = 0
        blueSlider.value = 0.49
        blueValueLabel.text = String(0.49)
        blueSlider.maximumValue = 1
        
    }
    
}

