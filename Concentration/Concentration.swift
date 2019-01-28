//
//  Concentration.swift
//  Concentration
//
//  Created by XCodeClub on 2019-01-28.
//  Copyright © 2019 cgongoram. All rights reserved.
//

import Foundation

class Concentration
{
    
//    var cards = Array<Card>()  // array of cards must be initialized with the "()" ate the end of Array<Card>
    var cards = [Card]()
    
    func chooseCard(at index: Int)
    {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards
        {
            let card = Card()
//            cards.append(card)
//            cards.append(card)
            cards += [card, card]
        }
        

    }
}
