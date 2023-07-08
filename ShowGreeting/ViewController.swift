//
//  ViewController.swift
//  ShowGreeting
//
//  Created by OSIIOSdev on 08.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
        
    }
    
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var greetingButtonConfiguration = UIButton.Configuration.filled()
        
        greetingButtonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.6344559789, green: 0.5171182752, blue: 0.3686929345, alpha: 1)
        greetingButtonConfiguration.title = title
        greetingButtonConfiguration.buttonSize = .large
        greetingButtonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 23, weight: .bold, width: .standard)
        
        return greetingButtonConfiguration
    }
}

