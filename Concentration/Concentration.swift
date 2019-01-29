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
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isMatched = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                // either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[index].isFaceUp = true
                    indexOfOneAndOnlyFaceUpCard = index
                }
            }
        }
    }

    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards
        {
            let card = Card()
//            cards.append(card)
//            cards.append(card)
            cards += [card, card]
        }
        print(cards)
        // TODO: shuffle the cards
//        cards.shuffle()
        print(cards)

    }
}
