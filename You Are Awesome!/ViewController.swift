//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Dominic Severo on 1/24/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var messageNumber = -1
    var imageNumber = -1
    var soundNumber = -1
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBound: Int) -> Int{
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        } while originalNumber == newNumber
        return newNumber
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name)
        {
            do
            {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }
            catch
            {
                print("🤬 ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        }
        else
        {
            print("🤬 ERROR: Could not read data from file sound0")
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fabuolous?,That's You!",
                        "When The Genius Bar needs help, They Call YOU!",
                        "You've Got The Design Skills of Jony Ive"]

        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBound: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBound: totalNumberOfImages - 1)
        imageView.image = UIImage(named: "image\(imageNumber)")
                
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBound: totalNumberOfSounds - 1)
        playSound(name: "sound\(soundNumber)")
    }
    
}
