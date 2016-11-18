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
    
    var emojis = ["💩","😂","😍","🐿","🐹", "🦁"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainEmojiTableView.dataSource = self
        mainEmojiTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emojis.count //how many cells are gonna be is the ammount of items in "emojis" array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row] //it's going to ad to each row whatever is in te emoji's array
        return cell // finish returning "cell" constant variable 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

