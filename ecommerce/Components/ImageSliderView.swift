//
//  ImageSliderView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 23.06.2023.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var curentIndex = 0
    var slides: [String] = ["fn1","fn2","fn3","fn4","fn5"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[curentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count ){ index in
                    Circle()
                        .fill(self.curentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10,height: 10 )
                    
                }
            }.padding()
        }.padding()
            .onAppear{Timer.scheduledTimer(withTimeInterval: 5, repeats: true){ timer in
            if self.curentIndex + 1 == self.slides.count{
                self.curentIndex = 0
            }else{
                self.curentIndex +=  1
            }
    }}
            
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
