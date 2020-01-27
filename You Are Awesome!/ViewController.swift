//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Connor on 1/16/20.
//  Copyright © 2020 Connor Sullivan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    var totalNumberOfSounds = 2
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) Couldn't initialize AVAudioPlayer")
            }
        } else {
            print("Error: Could Not Play Sound")
        }
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!","You Are Great!",
                        "You Are Da Bomb!","You Are Fabulous!",
                        "You Are Swifty!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "You Are a Legend!"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...(messages.count-1))
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        var newSoundNumber: Int
        repeat {
            newSoundNumber = Int.random(in: 0...totalNumberOfSounds)
        } while soundNumber == newSoundNumber
        soundNumber = newSoundNumber
        
        playSound(name:"sound\(soundNumber)")
    }
    
    
}


