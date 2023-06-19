//
//  DesafioJustaTests.swift
//  DesafioJustaTests
//
//  Created by Carol Bezerra on 19/06/23.
//

import XCTest
@testable import DesafioJusta

final class DesafioJustaTests: XCTestCase {

    private var desafioJustaViewModel: DesafioJustaViewModel!

    override func setUp() {
        desafioJustaViewModel = DesafioJustaViewModel()
    }

    override func tearDown() {
        desafioJustaViewModel = nil
    }

    func testLongest_shouldReturnLongestWord() {
        // GIVEN USER INPUTS A PHRASE
        let input = "I love dogs"

        // WHEN TAP ON BUTTON
        let output = desafioJustaViewModel.longestWord(sen: input)

        // THEN IT SHOWS THE LONGEST WORD
        XCTAssertEqual(desafioJustaViewModel.longest, output)
    }

}
