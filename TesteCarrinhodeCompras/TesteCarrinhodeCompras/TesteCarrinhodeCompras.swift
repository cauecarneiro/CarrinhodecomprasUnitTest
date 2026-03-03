//
//  TesteCarrinhodeCompras.swift
//  TesteCarrinhodeCompras
//
//  Created by Cauê Carneiro on 03/03/26.
//

import Foundation

struct Product {
    let id: UUID
    let name: String
    let price: Double
}

struct CartItem {
    let product: Product
    var quantity: Int
}

enum CartError: Error {
    case invalidQuantity
    case invalidDiscount
}

final class ShoppingCart {
    
    private(set) var items: [CartItem] = []
    
    func add(product: Product, quantity: Int) throws {
        if quantity <= 0 {
            throw CartError.invalidQuantity
        }

        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].quantity += quantity
        } else {
            let item = CartItem(product: product, quantity: quantity)
            items.append(item)
        }
    }
    
    func totalPrice() -> Double {
        return 0
    }
    
    func apply(discount: Double) throws -> Double {
        return 0
    }
}
