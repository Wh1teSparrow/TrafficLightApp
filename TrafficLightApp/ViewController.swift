//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Kirill Syrtsev on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        lightButton.layer.cornerRadius = 30
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    @IBAction func lightButtonPressed() {
        if redLight.alpha != 1 { redLight.alpha = 1
            lightButton.setTitle("NEXT", for: .normal)
        } else if yellowLight.alpha != 1 {
            yellowLight.alpha = 1
        } else if greenLight.alpha != 1 {
            greenLight.alpha = 1
            lightButton.setTitle("OFF", for: .normal)
        } else {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            lightButton.setTitle("START", for: .normal)
        }
    }
}

