//
//  ViewController.swift
//  youAreAwesomeReal
//
//  Created by Michael Burke on 9/4/18.
//  Copyright © 2018 Michael Burke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImage: UIImageView!
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    var imageIndex = 0
    var numberOfImages = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
    }
    
    @IBAction func showMessagePress(_ sender: UIButton) {
        let messages = ["You are fantastic!", "You are great!", "You are amazing!"]
        
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        
        awesomeImage.image = UIImage(named: "Image\(imageIndex)")
        
        /*messageLabel.text = messages.randomElement()!*/
        
        /*   if index == messages.count-1 { index = 0 } else { index = index + 1}*/
        
        /*index = index + 1
         if index == 3 { index = index - 3}
        
       messageLabel.text = messages[index]*/
        
        /* let message1 = "You are Awesome!"
         let message2 = "You Are Great!"
         let message3 = "You Are Amazing!"
         
         /
         
         if messageLabel.text == message1
         { messageLabel.text = message2}
         else if messageLabel.text == message2 {
         messageLabel.text = message3}
         else { messageLabel.text = message1} */
        
    }
    
}
