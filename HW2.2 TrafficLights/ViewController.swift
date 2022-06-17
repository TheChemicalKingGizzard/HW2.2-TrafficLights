//
//  ViewController.swift
//  HW2.2 TrafficLights
//
//  Created by Даниил Петров on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLights: [UIView]!
    @IBOutlet var changeColorButton: UIButton!
    private var nextColor = "red"

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultLights()
        changeColorButton.layer.cornerRadius = 15
        changeColorButton.setTitle("Start", for: .normal)
    }
    

    
    
    
    private func setDefaultLights() {
        trafficLights.forEach{
            $0.alpha = 0.3
        }
    }
    @IBAction private func changeColorTapped(_ sender: UIButton) {
        changeColorButton.setTitle("Next", for: .normal)
        setDefaultLights()
        switch nextColor {
        case "red":
            trafficLights[0].alpha = 1
            nextColor = "yellow"
        case "yellow":
            trafficLights[1].alpha = 1
            nextColor = "green"
        case "green":
            trafficLights[2].alpha = 1
            nextColor = "red"
        default: print("Error")
        }
    }
    
}

