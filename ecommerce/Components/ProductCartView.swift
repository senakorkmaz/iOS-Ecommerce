//
//  ProductCartView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 28.06.2023.
//

import SwiftUI

struct ProductCartView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack{
             Color("kSecondary")
            
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical,1)
                    
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical,0.5 )
                    
                    Text("$ \(product.price)")
                        .foregroundColor(.black)
                        .bold()
                    
                }
                
                Button{
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35,height: 35)
                        .padding(.trailing)
                }
                
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
    }
}

struct ProductCartView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartView(product: productList[0])
            .environmentObject(CartManager())
    }
}
