//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Dominic Severo on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    let totalNumberOfImages = 9
    var imageNumber = -1
    var messageNumber = -1
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fabuolous?,That's You!",
                        "When The Genius Bar needs help, They Call YOU!",
                        "You've Got The Design Skills of Jony Ive"]
        
        var newMessageNumber : Int
        repeat
        {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
                var newImageNumber : Int
        repeat
        {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
    }
    
}
