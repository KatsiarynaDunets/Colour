//
//  ViewController.swift
//  Colour
//
//  Created by Kate on 06/09/2023.
//

    import UIKit

    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        @IBAction func changeBGButtonPressed(_ sender: UIButton) {
            performSegue(withIdentifier: "goToSettings", sender: self)
        }
        
        @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
            let sourceViewController = unwindSegue.source as! SettingsViewController
            view.backgroundColor = sourceViewController.selectedColor
        }
    }
