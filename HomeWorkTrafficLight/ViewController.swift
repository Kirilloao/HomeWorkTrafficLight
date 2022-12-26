//
//  ViewController.swift
//  HomeWorkTrafficLight
//
//  Created by Kirill Taraturin on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        
        trafficLightButton.setTitle("Start", for: .normal)
        trafficLightButton.layer.cornerRadius = 15
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
 
    }
    
    enum Traffic {
        case red
        case yellow
        case green
        
    }
    var lights: Traffic = .red
    
    @IBAction func buttonTrafficLightDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)

        switch lights {
            
        case .red:
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            lights = .yellow
        case .yellow:
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            lights = .green
        case .green:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            lights = .red
        }
    }

}
