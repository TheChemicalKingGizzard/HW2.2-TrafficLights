//
//  ViewController.swift
//  HW2.2 TrafficLights
//
//  Created by Даниил Петров on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightsViews: [UIView]!
    @IBOutlet var changeColorButton: UIButton!
    private var lightCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultLights()
        changeColorButton.layer.cornerRadius = 15
        trafficLightsViews.forEach{$0.layer.cornerRadius = $0.frame.width / 2}
    }
    
    private func setDefaultLights() {
        trafficLightsViews.forEach{
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
        
        switch lightCounter {
        case 0:
            trafficLightsViews[0].alpha = 1
            lightCounter = 1
        case 1:
            trafficLightsViews[1].alpha = 1
            lightCounter = 2
        default:
            trafficLightsViews[2].alpha = 1
            lightCounter = 0
        
        }
    }
}
