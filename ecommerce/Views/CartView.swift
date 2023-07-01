//
//  CartView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 1.07.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        VStack{
           
                if cartManager.products.count > 0{
                    ScrollView(){
                        VStack(spacing: 0){
                            ForEach(cartManager.products){ product in
                                CartProductView(product: product)
                            }
                        }
                    }
                    
                    VStack(spacing: 2){
                        HStack{
                            Text("Your Total is: ")
                            Text("$ \(cartManager.total)")
                                .bold()
                            Spacer()
                            
                        }
                        .padding(.bottom,50)
                    
                        PaymentButton(action: {})
                            .frame(maxWidth: 300, maxHeight: 20)
                    }.padding(.bottom,80)
                }else{
                    Text("Your Cart is Empty")
                }
            
            
        }.navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
