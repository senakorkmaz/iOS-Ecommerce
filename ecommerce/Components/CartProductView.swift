//
//  CartProductView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 1.07.2023.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9 )
            
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .bold()
                
                Text("$ \(product.price)")
            }
            .padding()
            
            Spacer()
            
            HStack(spacing: 4){
                let productCount = cartManager.getProductCount(product: product)
                Image(systemName: "plus.square")
                    .foregroundColor(.black)
                    .onTapGesture {
                        cartManager.addToCart(product: product)
                    }
                Text("\(productCount)")
                if  productCount == 1 {
                    
                    Image(systemName: "trash")
                        .foregroundColor(.black)
                        .onTapGesture {
                            cartManager.removeFromCart(product: product)
                        }
                }else{
                    Image(systemName: "minus.square")
                        .foregroundColor(.black)
                        .onTapGesture {
                            cartManager.minusProductCart(product: product)
                        }
                    
                }
            }
            
        }
        .padding(.horizontal)
        .background(Color("kSecondary"))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

struct CartProductView_Previews: PreviewProvider {
    static var previews: some View {
        CartProductView(product: productList[0])
            .environmentObject(CartManager())
    }
}
