//
//  Player.swift
//  CardGameApp
//
//  Created by Cory Kim on 2020/02/08.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import Foundation

class Player {
    private(set) var hand: [Card] = []
    private(set) var name: String!
    private(set) var value: Value!
    
    func setupHand(with hand: [Card]) {
        self.hand = hand
    }
    
    func setupName(_ name: String) {
        self.name = name
    }
    
    func forEachCard(_ handler: (Card) -> ()) {
        for card in hand {
            handler(card)
        }
    }
    
    func calculateItsValue() {
        value = Value(hand: hand)
    }
}

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.hand == rhs.hand && lhs.name == rhs.name && lhs.value == rhs.value
    }
    
    static func < (lhs: Player, rhs: Player) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func > (lhs: Player, rhs: Player) -> Bool {
        return lhs.value > rhs.value
    }
}
