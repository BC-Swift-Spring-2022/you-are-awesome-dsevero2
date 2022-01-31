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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let bombMessage = "You Are Da Bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "itachi")
            
        }
        else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "minato")
        }
        else
        {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "naruto_sasuke")
        }
    }
    
}
