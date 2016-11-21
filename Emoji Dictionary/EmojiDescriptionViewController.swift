//
//  EmojiDescriptionViewController.swift
//  Emoji Dictionary
//
//  Created by Jorge on 11/18/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class EmojiDescriptionViewController: UIViewController {

    @IBOutlet weak var emojiPoster: UILabel!
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    
    var emojiReceiver = "Empty"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiPoster.text = emojiReceiver
        
        if emojiReceiver == "💩" {
            emojiDescriptionLabel.text = "A pile of poo with googly eyes!"
        }
        
        if emojiReceiver == "🦁" {
            emojiDescriptionLabel.text = "A cute Lion!"
        }
        
        if emojiReceiver == "🐹" {
            emojiDescriptionLabel.text = "A lovely hamster face!"
        }
        
        if emojiReceiver == "🐿" {
            emojiDescriptionLabel.text = "Squirel eating a nut!"
        }
        
        if emojiReceiver == "😍" {
            emojiDescriptionLabel.text = "A dude with hearts for eyes. He's in Love!"
        }
        
        if emojiReceiver == "😂" {
            emojiDescriptionLabel.text = "laughing so hard he's crying!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
