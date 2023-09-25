//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Kirill Syrtsev on 22.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightButton.layer.cornerRadius = lightButton.frame.height / 2
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.height / 2
        greenLightView.layer.cornerRadius = redLightView.frame.height / 2
    }
    
    @IBAction func lightButtonPressed() {
        if redLightView.alpha < 0.4 {
            redLightView.alpha = 1
            lightButton.setTitle("NEXT", for: .normal)
        } else if yellowLightView.alpha < 0.4 {
            redLightView.alpha = 0.4
            yellowLightView.alpha = 1
        } else if greenLightView.alpha < 0.4 {
            yellowLightView.alpha = 0.4
            greenLightView.alpha = 1
            lightButton.setTitle("OFF", for: .normal)
        } else {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            lightButton.setTitle("START", for: .normal)
        }
    }
}
