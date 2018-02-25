//
// Created by Александр Славщик on 25.02.2018.
// Copyright (c) 2018 Александр Славщик. All rights reserved.
//

import XCTest
@testable import Core

class THitGotBust: XCTestCase {

    let game = MockGame()

    override func setUp() {
        super.setUp()

        self.game.setUp(deck: [
            // Dealer
            Card(Rank.c10), Card(Rank.c10),

            //Hand
            Card(Rank.c10), Card(Rank.c3), Card(Rank.c7), Card(Rank.c5)
        ])

        self.game.bet(index: 1, stake: 10)

        self.game.deal()
    }

    func testHit() {
        self.game.hit()
        self.game.hit()

        XCTAssertFalse(self.game.live, "Game round should be ended here")
    }
}