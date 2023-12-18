//
//  HotelHeaderView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct HotelHeaderView: View {

    let rating: Int
    let ratingName: String
    let name: String
    let adress: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            RatingView(rating: rating, ratingName: ratingName)
            
            Text(name)
                .font(.system(size: 22))
            
            Button {
                //
            } label: {
                Text(adress)
                    .font(.system(size: 14))
                    .foregroundStyle(.blue)
            }
        }
    }
}
