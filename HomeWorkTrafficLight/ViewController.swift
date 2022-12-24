//
//  ViewController.swift
//  HomeWorkTrafficLight
//
//  Created by Kirill Taraturin on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var redLightLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 20
        yellowLightLabel.layer.cornerRadius = 20
        greenLightLabel.layer.cornerRadius = 20
    }


}

