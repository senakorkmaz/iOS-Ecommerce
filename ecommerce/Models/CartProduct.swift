//
//  CartProduct.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 2.07.2023.
//

import Foundation

class CartProduct: Identifiable{
    var product: Product
    var productCount: Int
    init(product: Product) {
        self.product = product
        self.productCount = 1
    }
}
