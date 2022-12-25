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
    
    @IBAction func changeTrafficLightDidTapped() {
        trafficLightButton.setTitle("Next", for: .normal)
        
        
        
    }
    

    
   
    
}
