//
//  PeculiaritiesView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

@ViewBuilder
func ChipsView(peculiarities: String) -> some View {
    
    Text(peculiarities)
        .foregroundColor(CustomColor.grayText)
        .padding(5)
        .frame(height: 29)
        .background(CustomColor.bgView)
        .cornerRadius(6)
}
