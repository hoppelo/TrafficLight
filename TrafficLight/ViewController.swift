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
        if trafficLightRed.layer.opacity == 0.3
            && trafficLightYellow.layer.opacity == 0.3
            && trafficLightGreen.layer.opacity == 0.3 {
            startButton.setTitle("NEXT", for: .normal)
            trafficLightRed.layer.opacity = 1.0
        } else if trafficLightRed.layer.opacity == 1.0 {
            trafficLightRed.layer.opacity = 0.3
            trafficLightYellow.layer.opacity = 1.0
        } else if trafficLightYellow.layer.opacity == 1.0 {
            trafficLightYellow.layer.opacity = 0.3
            trafficLightGreen.layer.opacity = 1.0
        } else {
            trafficLightGreen.layer.opacity = 0.3
            trafficLightRed.layer.opacity = 1.0
        }
    }
}
