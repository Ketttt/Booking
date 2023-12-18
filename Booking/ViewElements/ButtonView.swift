//
//  ButtonView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .frame(height: 48)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(CustomColor.activeButton)
            .cornerRadius(8)
            .border(.white, width: 1, cornerRadius: 8)
    }
}
