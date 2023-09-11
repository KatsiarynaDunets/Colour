//
//  ViewController.swift
//  Colour
//
//  Created by Kate on 06/09/2023.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {
    @IBOutlet var viewBackground: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func handleColorChangeWithClosure(_ color: UIColor) {
        view.backgroundColor = color
    }

    @IBAction func changeBGButtonPressed(_ sender: UIButton) {
        let SettingsVС = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        SettingsVС.delegate = self

        SettingsVС.colorClosure = handleColorChangeWithClosure
        navigationController?.pushViewController(SettingsVС, animated: true)
    }

    func didSelectColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
