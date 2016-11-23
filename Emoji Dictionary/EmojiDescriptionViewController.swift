//
//  EmojiDescriptionViewController.swift
//  Emoji Dictionary
//
//  Created by Jorge on 11/18/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class EmojiDescriptionViewController: UIViewController {

    @IBOutlet weak var originDateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiPoster: UILabel!
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    
    var emojiReceiver = EmojiClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiPoster.text = emojiReceiver.emojiLabel
        categoryLabel.text = "Category: \(emojiReceiver.emojiCategory)"
        emojiDescriptionLabel.text = "\(emojiReceiver.emojiDescription)"
        originDateLabel.text = "Birthyear: \(emojiReceiver.emojiBirthyear)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
