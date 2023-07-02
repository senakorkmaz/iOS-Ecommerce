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
           
                if cartManager.cartProducts.count > 0{
                    ScrollView(){
                        VStack(spacing: 0){
                            ForEach(cartManager.cartProducts){ cartProduct in
                                
                                NavigationLink{
                                    ProductDetailsView(product: cartProduct.product)
                                        .environmentObject(cartManager)
                                } label: {
                                    CartProductView(product: cartProduct.product)
                                        
                                }
                            }
                            
                        }
                    }
                    
                    VStack{
                        HStack{
                            Text("Your Total is: ")
                            Spacer()
                            Text("$ \(cartManager.total)")
                                .bold()
                        }
                        .padding()
                       
                        PaymentButton(action: {})
                            .frame(width: 400, height: 35)
                    }.padding(.bottom,65)
                    

                }else{
                    VStack(spacing: 10){
                        Image(systemName: "cart.badge.minus")
                            .resizable()
                            .frame(width: 230,height: 200)
                            .opacity(0.2)
                            .foregroundColor(Color("kPrimary"))
                        
                        Text("No Items in Your Cart")
                            .opacity(0.4)
                            .foregroundColor(Color("kPrimary"))
                    }
                    
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
