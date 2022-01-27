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
        messageLabel.text = "Fabulous? That's You!"
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        imageView.image = UIImage(named: "naruto_sasuke")
    }

}
