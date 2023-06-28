//
//  Product.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 23.06.2023.
//

import Foundation

struct Product: Identifiable{
    
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    
}

var productList = [
    Product(name: "Leather Couch",
            image: "fn1",
            description: "",
            supplier: "IKEA",
            price: 350),
    Product(name: "Nice Couch",
            image: "fn2",
            description: "",
            supplier: "Modalife",
            price: 350),
    Product(name: "Gray Couch",
            image: "fn3",
            description: "",
            supplier: "IKEA",
            price: 350),
    Product(name: "Beatiful Couch",
            image: "fn4",
            description: "",
            supplier: "Vivense",
            price: 350),
    Product(name: "Outdoor Couch",
            image: "fn5",
            description: "",
            supplier: "IKEA",
            price: 350)
]
