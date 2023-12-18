//
//  TouristInfoView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct TouristInfoView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(CustomColor.grayText)
                .font(.system(size: 16))
            Spacer()
            Text(String(subtitle))
                .font(.system(size: 16))
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
    }
}
