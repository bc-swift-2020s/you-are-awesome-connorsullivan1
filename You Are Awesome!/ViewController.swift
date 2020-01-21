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
    @IBOutlet weak var imageView: UIImageView!
    
    var messages = ["You Are Awesome!","You Are Great!","You Are Da Bomb!","You Are Fabulous!","You Are Swifty!","You Are a Legend!"]
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //let imageName = "image" + String(imageNumber)
        imageView.image = UIImage(named: "image\(imageNumber)")
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == 5 {
            messageNumber = 0
        }
        

    //        let awesomeMessage = "You Are Awesome!"
    //        let greatMessage = "You Are Great!"
    //        let bombMessage = "You Are Da Bomb!"
    //
    //        if messageLabel.text == awesomeMessage {
    //            messageLabel.text = greatMessage
    //            imageView.image = UIImage(named: "image1")
    //        } else if messageLabel.text == greatMessage {
    //            messageLabel.text = bombMessage
    //            imageView.image = UIImage(named: "image2")
    //        } else {
    //            messageLabel.text = awesomeMessage
    //            imageView.image = UIImage(named: "image0")
    //        }
        
    }
    
}

