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
//    var game: Concentration = Concentration()
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2) //var gets inicialized until something uses that var
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
//        print("agh! a ghost!")
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            print("Card number \(cardNumber)")
            game.chooseCard(at: cardNumber)
            updateviewFromModel()
        } else {
            print("Chosen card number error")
        }
        
    }
    
    func updateviewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
  
//    var emojiChoices: Array<String> = ["🐱","🐵","🐶","🐭","🐨","🐺","🦆","🦉"]
    var emojiChoices = ["🐱","🐵","🐶","🐭","🐨","🐺","🦆","🦉"]

//    var emoji = Dictionary<Int,String>()
    var emoji = [Int:String]()

    func emoji(for card: Card) -> String {
//        if emoji[card.identifier] != nil {
//            return emoji[card.identifier]!
//        } else {
//            return "?"
//        }
        if emoji[card.identifier]  == nil {
            if emojiChoices.count > 0 {
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            }
        }
        return emoji[card.identifier] ?? "?"
    }
    
}

