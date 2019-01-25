//
//  ViewController.swift
//  Concentration
//
//  Created by XCodeClub on 2019-01-24.
//  Copyright © 2019 cgongoram. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["🎃","👻","🎃","👻","🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
//        print("agh! a ghost!")
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            print("Card number \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card number error")
        }
        
    }
    
  
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        
        
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
}

