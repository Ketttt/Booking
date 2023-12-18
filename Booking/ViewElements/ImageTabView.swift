//
//  ImageTabView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI
import Kingfisher

struct ImageTabView: View {
    
    let items: [String]
    
    var body: some View {
        
        TabView {
            ForEach(items, id: \.self) { image in
                KFImage(URL(string: image))
                    .resizable()
                    .backgroundDecode()
                    .placeholder{
                        Image("egypt")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 257)
                    }
                    .aspectRatio(contentMode: .fill)
            }//ForEach
        }//TabView
        .tabViewStyle(.page)
        .frame(height: 257)
        .cornerRadius(5)
    }
}
