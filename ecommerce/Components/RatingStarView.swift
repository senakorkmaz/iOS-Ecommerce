//
//  RatingStartView.swift
//  ecommerce
//
//  Created by Senanur Korkmaz on 2.07.2023.
//

import SwiftUI

struct RatingStarView: View {
    var starTypeName: String
    var body: some View {
        HStack {
            Image(systemName: starTypeName)
                .resizable()
                .frame(width: 20,height: 20)
                .foregroundColor(.yellow)
        }
    }
}

struct RatingStarView_Previews: PreviewProvider {
    static var previews: some View {
        RatingStarView(starTypeName: "star")
    }
}
