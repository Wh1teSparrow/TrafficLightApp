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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
    }
}

