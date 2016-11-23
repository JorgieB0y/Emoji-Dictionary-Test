//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jorge on 11/17/16.
//  Copyright © 2016 Jorge Velasco Sanvodal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainEmojiTableView: UITableView!
    
    var emojis: [EmojiClass] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainEmojiTableView.dataSource = self
        mainEmojiTableView.delegate = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emojis.count //how many cells are gonna be is the ammount of items in "emojis" array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiLabel //it's going to ad to each row whatever is in te emoji's array
        return cell // finish returning "cell" constant variable 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveToDescriptionSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let EmojiDescriptionVC = segue.destination as! EmojiDescriptionViewController
        EmojiDescriptionVC.emojiReceiver = sender as! EmojiClass
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() ->  [EmojiClass] {
        let emoji1 = EmojiClass()
        emoji1.emojiLabel = "💩"
        emoji1.emojiDescription = "This is a pile of Poo"
        emoji1.emojiCategory = "Misc"
        emoji1.emojiBirthyear = 2001
        
        let emoji2 = EmojiClass()
        emoji2.emojiLabel = "😂"
        emoji2.emojiDescription = "A smiley face that laughed super hard"
        emoji2.emojiCategory = "Smiley face"
        emoji2.emojiBirthyear = 2000
        
        let emoji3 = EmojiClass()
        emoji3.emojiLabel = "😍"
        emoji3.emojiDescription = "He's in Love!"
        emoji3.emojiCategory = "Smiley"
        emoji3.emojiBirthyear = 2006
        
        let emoji4 = EmojiClass()
        emoji4.emojiLabel = "🐿"
        emoji4.emojiDescription = "A lovely Squirel!"
        emoji4.emojiCategory = "Animal"
        emoji4.emojiBirthyear = 2007
        
        let emoji5 = EmojiClass()
        emoji5.emojiLabel = "🐹"
        emoji5.emojiDescription = "A cute and colorful hamster"
        emoji5.emojiCategory = "Animal"
        emoji5.emojiBirthyear = 2011
        
        let emoji6 = EmojiClass()
        emoji6.emojiLabel = "🦁"
        emoji6.emojiDescription = "Rawr! a Lion"
        emoji6.emojiCategory = "Animal"
        emoji6.emojiBirthyear = 2012
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }


}

