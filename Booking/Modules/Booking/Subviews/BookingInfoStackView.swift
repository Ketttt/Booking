//
//  BookingInfoStackView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct BookingInfoStackView: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack {
                Text(title)
                    .foregroundColor(CustomColor.grayText)
                    .font(.system(size: 16))
            }
            .frame(minWidth: 0, maxWidth: 133, alignment: .leading)
            
            VStack {
                Text(subtitle)
                    .font(.system(size: 16))
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
        }//HStack
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
        
    }
}
