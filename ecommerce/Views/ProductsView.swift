//
//  ProductsView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 2.07.2023.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum:160), spacing: 20)]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column, spacing: 20){
                    ForEach(productList, id: \.id){ product in
                        NavigationLink{
                            ProductDetailsView(product: product)
                                .environmentObject(cartManager)
                        } label: {
                            ProductCartView(product: product)
                                .environmentObject(cartManager)
                        }
                        
                    }
                }.padding(.bottom,90)
            }
            
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}
