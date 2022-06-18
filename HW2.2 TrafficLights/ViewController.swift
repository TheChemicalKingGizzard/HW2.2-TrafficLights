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
        trafficLights.forEach{$0.layer.cornerRadius = 50}
    }
    
    private func setDefaultLights() {
        trafficLights.forEach{
            $0.alpha = 0.3
        }
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.boldSystemFont(ofSize: 25)
        buttonConfiguration.baseBackgroundColor = .systemBlue
        return buttonConfiguration
    }
    
    @IBAction func colorChanged(_ sender: UIButton) {
        changeColorButton.configuration = setupButton(with: "Next")
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
        default: print("Error in color changing")
        }
    }
}
