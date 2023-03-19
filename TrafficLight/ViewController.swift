//
//  ViewController.swift
//  TrafficLight
//
//  Created by Nadezhda Popova on 2023/03/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trafficLightRed: UIView!
    @IBOutlet var trafficLightYellow: UIView!
    @IBOutlet var trafficLightGreen: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightRed.layer.cornerRadius = 50
        trafficLightYellow.layer.cornerRadius = 50
        trafficLightGreen.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    
    }

    @IBAction func startButtonDidTapped(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
    }
    
}

