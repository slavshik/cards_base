//
// Created by Александр Славщик on 02.03.2018.
// Copyright (c) 2018 Александр Славщик. All rights reserved.
//

import Foundation

class Dealer: Hand, BJDealerHand {

    private(set) var insuranceAvailable: Bool = false

    convenience init() {
        self.init("dealer")
    }
    var facedCard: Card? {
        get {
            if self.cards.count >= 2 {
                return cards[1]
            }
            return nil
        }
    }
}
