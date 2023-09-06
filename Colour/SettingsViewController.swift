//
//  SettingsViewController.swift
//  Colour
//
//  Created by Kate on 06/09/2023.
//

import SwiftUI

class SettingsViewController: UIViewController {
    //Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var hexTF: UITextField!
    //Text fields
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    //Wiew
    @IBOutlet weak var colorView: UIView!
    
    
    var selectedColor: UIColor = .white
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
    
    @IBAction func redSliderChanged(_ sender: UISlider) {          updateColor()
}

    @IBAction func greenSliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
        func updateColor() {
            let red = CGFloat(redSlider.value) / 255.0
            let green = CGFloat(greenSlider.value) / 255.0
            let blue = CGFloat(blueSlider.value) / 255.0
            let alpha = CGFloat(opacitySlider.value)
            
            selectedColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
            
       //     hexTF.text = selectedColor.toHexString()
            
            view.backgroundColor = selectedColor
        }
    }
   
   
