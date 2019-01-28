//
//  Card.swift
//  Concentration
//
//  Created by XCodeClub on 2019-01-28.
//  Copyright © 2019 cgongoram. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
//    init(identifier i:Int) {
//        identifier = i
//    }
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
