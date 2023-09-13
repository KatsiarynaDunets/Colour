//
//  SettingsViewController.swift
//  Colour
//
//  Created by Kate on 06/09/2023.
//

import SwiftUI

protocol ColorPickerDelegate {
    func didSelectColor(_ color: UIColor)
}

class SettingsViewController: UIViewController {
    var delegate: ColorPickerDelegate?
    var colorClosure: ((UIColor) -> Void)?
    
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
    // Buttons
    @IBOutlet weak var doneWithDelegate: UIButton!
    @IBOutlet var doneWithClosure: UIButton!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) { updateColor()
    }
        
    @IBAction func doneWithDelegatesButtonPressed(_ sender: UIButton) {
        delegate?.didSelectColor(view.backgroundColor ?? UIColor.white)
        navigationController?.popViewController(animated: true)
    }
        
    @IBAction func doneWithClosureButtonPressed(_ sender: UIButton) {
        if let colorClosure = colorClosure {
            colorClosure(view.backgroundColor ?? UIColor.white)
        }
        navigationController?.popViewController(animated: true)
    }
        
    func updateColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let alpha = CGFloat(opacitySlider.value)
        
        let color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha/100)
        
        colorView.backgroundColor = color
    }
}
