//
//  CartManager.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 28.06.2023.
//

import Foundation

class CartManager: ObservableObject{
    
    @Published private(set) var cartProducts: [CartProduct] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        if let existingProduct = cartProducts.first(where: { $0.product == product }) {
            existingProduct.productCount += 1
        } else {
            
            let cartProduct = CartProduct(product: product)
            cartProducts.append(cartProduct)
        }
        total += product.price
    }
    
    func minusProductCart(product: Product){
        if let existingProductIndex = cartProducts.firstIndex(where: { $0.product == product }) {
            
            
            if cartProducts[existingProductIndex].productCount == 1 {
                removeFromCart(product: product)
                
            }else{
                cartProducts[existingProductIndex].productCount -= 1
                total -= product.price
            }
            
            
        }
       
    }
    
    func removeFromCart(product: Product){
        if let existingProductIndex = cartProducts.firstIndex(where: { $0.product == product }) {
            cartProducts.remove(at: existingProductIndex)
        }
        total -= product.price
    }
    
    func getProductCount(product: Product) -> Int{
        if let existingProductIndex = cartProducts.firstIndex(where: { $0.product == product }) {
            return cartProducts[existingProductIndex].productCount
        }
        return 0
    }
    
}
