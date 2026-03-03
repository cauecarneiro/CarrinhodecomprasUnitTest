//
//  TesteCarrinhodeComprasTests.swift
//  TesteCarrinhodeComprasTests
//
//  Created by Cauê Carneiro on 03/03/26.
//

import XCTest
@testable import TesteCarrinhodeCompras

final class ShoppingCartTests: XCTestCase {

    var cart: ShoppingCart!

    override func setUp() {
        super.setUp()
        cart = ShoppingCart()
    }

    override func tearDown() {
        cart = nil
        super.tearDown()
    }
    
    func testAdd_ExistingProduct_IncreasesQuantity() throws {
        // Arrange
        let product = Product(id: UUID(), name: "MacBook", price: 10000)

        // Act
        try cart.add(product: product, quantity: 1)
        try cart.add(product: product, quantity: 2)

        // Assert
        XCTAssertEqual(cart.items.count, 1)
        XCTAssertEqual(cart.items.first?.quantity, 3)
    }
    
}
