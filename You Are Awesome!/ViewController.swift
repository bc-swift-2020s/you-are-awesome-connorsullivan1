//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Connor on 1/16/20.
//  Copyright © 2020 Connor Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                print("🤔 viewDidLoad has run!")
                messageLabel.text = "Fabulous? That's you!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🤔 The message button was pressed!")
        messageLabel.text = "You are awesome!"
        messageLabel.textColor = .systemBlue
        messageLabel.textAlignment = .left
    }
    @IBAction func messageButton2Pressed(_ sender: UIButton) {
        print("Message Button 2 Pressed")
        
        messageLabel.text = "You are Cool!"
        messageLabel.textColor = .systemRed
        messageLabel.textAlignment = .right
    }
    
}

