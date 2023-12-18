//
//  LoaderView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct LoaderView: View {
    
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            .scaleEffect(1.5)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}
