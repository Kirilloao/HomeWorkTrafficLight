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
        redLightView.layer.cornerRadius = 63
        yellowLightView.layer.cornerRadius = 63
        greenLightView.layer.cornerRadius = 63
        
        trafficLightButton.setTitle("Start", for: .normal)
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        
    }
    
    @IBAction func changeButtonTrafficLightDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)
        
        enum Traffic {
            case red
            case yellow
            case green
            
        }
        var hello: Traffic = .yellow
        
        switch hello {
            
        case .red:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case .yellow:
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case .green:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
        }
        
      
    }
}
