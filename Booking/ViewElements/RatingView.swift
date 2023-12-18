//
//  RatingView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct RatingView: View {
    
    let rating: Int
    let ratingName: String
    
    var body: some View {
        HStack(spacing: 2) {
            Image(.star)
            Text(String(rating))
                .foregroundColor(CustomColor.ratingText)
                .font(.system(size: 16))
            Text(ratingName)
                .foregroundColor(CustomColor.ratingText)
                .font(.system(size: 16))
        }//HStack
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background{
            CustomColor.ratingBg
                .opacity(0.2)
        }//background
        .cornerRadius(5)
    }
}
