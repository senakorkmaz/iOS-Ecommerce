//
//  ProductDetailsView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 2.07.2023.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ScrollView{
            
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .padding(.top,63)
                            .padding(.trailing,20)
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                                
                        }
                        
                        HStack(spacing: 10){
                            let rating = product.rating
                            let intRating : Int = Int(rating)
                            let halfStar: Int = rating > Float(intRating) ? 1 : 0
                            var blankStar : Int = rating > Float(intRating) ? 4 - (intRating) : 5 - (intRating)
                            
                            ForEach(0..<intRating) { index in
                                RatingStarView(starTypeName: "star.fill")
                            }
                            
                        
                            if halfStar == 1 {
                                RatingStarView(starTypeName: "star.leadinghalf.filled")
                            }
                            
                          
                            ForEach(0..<blankStar) { index in
                                RatingStarView(starTypeName: "star")
                            }
                            Text("(\(String(format: "%.1f", rating)))")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            HStack(spacing: 4){
                                let productCount = cartManager.getProductCount(product: product)
                                Image(systemName: "plus.square")
                                    .foregroundColor(.black)
                                    .onTapGesture {
                                        cartManager.addToCart(product: product)
                                    }
                                Text("\(productCount)")
                                if productCount == 0 {
                                    Image(systemName: "minus.square")
                                        .foregroundColor(.gray)
                                } else {
                                    Image(systemName: "minus.square")
                                        .foregroundColor(.black)
                                        .onTapGesture {
                                            cartManager.minusProductCart(product: product)
                                        }
                                }
                            }
                        }.padding(.vertical)
                        
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                        
                        Spacer()
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                Text("Height: \(product.height)").foregroundColor(.gray)
                                Text("Width: \(product.width)").foregroundColor(.gray)
                                Text("Diameter: \(product.diameter)").foregroundColor(.gray)
                            }.frame(maxWidth: .infinity,alignment: .leading)
                            
                            VStack(alignment: .leading){
                                Text("Color")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                HStack{
                                    Image(systemName: "circle.fill").foregroundColor(.blue)
                                    Image(systemName: "circle.fill").foregroundColor(.black)
                                    Image(systemName: "circle.fill").foregroundColor(.gray)
                                }
                                
                            }.frame(maxWidth: .infinity,alignment: .leading)
                            
                        }.padding(.vertical)
                        
                        PaymentButton(action: {}).frame(width: .infinity,height: 35)
                    }.padding()
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y: -30)
                    
                }
            }
            
        }.ignoresSafeArea(edges: .top)
            
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: productList[3]).environmentObject(CartManager())
    }
}

