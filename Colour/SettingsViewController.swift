//
//  SettingsViewController.swift
//  Colour
//
//  Created by Kate on 06/09/2023.
//

import SwiftUI

class SettingsViewController: UIViewController {
    // Sliders
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var opacitySlider: UISlider!
    @IBOutlet var hexTF: UITextField!
    // Text fields
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
    @IBOutlet var opacityTF: UITextField!
    // Wiew
    @IBOutlet var colorView: UIView!
    
    var selectedColor: UIColor = .white
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func redSliderChanged(_ sender: UISlider) { updateColor()
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
   
