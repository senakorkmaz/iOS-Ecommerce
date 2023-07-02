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
    var width: String
    var height: String
    var diameter: String
    var rating: Float
    
}

extension Product: Equatable {
    // Product sınıfının diğer özellikleri ve fonksiyonları

    static func ==(lhs: Product, rhs: Product) -> Bool {
        // Burada Product sınıfının eşitlik kontrolü nasıl yapılacaksa onu belirtin
        // Örneğin, ürünlerin bir benzersiz kimliklerine (ID) sahip olduğunu varsayalım
        return lhs.id == rhs.id
    }
}


var productList = [
    Product(name: "Leather Couch",
            image: "fn1",
            description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.",
            supplier: "IKEA",
            price: 350,
            width: "200 cm",
            height: "135 cm",
            diameter: "105 cm",
            rating: 3),
    Product(name: "Nice Couch",
            image: "fn2",
            description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.",
            supplier: "Modalife",
            price: 350,
            width: "200 cm",
            height: "135 cm",
            diameter: "105 cm",
            rating: 3.5),
    Product(name: "Gray Couch",
            image: "fn3",
            description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.",
            supplier: "IKEA",
            price: 350,
            width: "200 cm",
            height: "135 cm",
            diameter: "105 cm",
            rating: 5),
    Product(name: "Beatiful Couch",
            image: "fn4",
            description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.",
            supplier: "Vivense",
            price: 350,
            width: "200 cm",
            height: "135 cm",
            diameter: "105 cm",
            rating: 2),
    Product(name: "Outdoor Couch",
            image: "fn5",
            description: "A leather couch is a luxurious and stylish seating option for any living space. With its sleek and timeless design, it adds an elegant touch to the room. The supple and smooth leather upholstery provides a comfortable seating experience. Its sturdy construction ensures durability and longevity. The rich color and texture of the leather create a warm and inviting atmosphere. Overall, a leather couch is a classic piece of furniture that combines beauty, comfort and durability.",
            supplier: "IKEA",
            price: 350,
            width: "200 cm",
            height: "135 cm",
            diameter: "105 cm",
            rating: 0)
]
