//
//  HotelListView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct HotelListView: View {
    
    private let detailsList: [TitleButton] = TitleButton.allCases

    var body: some View {
        VStack(spacing: 10) {
            ForEach(detailsList, id: \.id) { segment in
                HStack(spacing: 12){
                    Image(segment.image)
                        .resizable()
                        .frame(width: 24, height: 24)
                    VStack(alignment: .leading, spacing: 2) {
                        Text(segment.title)
                        Text(Constants.Hotel.essentials)
                    }
                    Spacer()
                    Image(.arrowTr)
                        .frame(width: 24, height: 24)
                }//HStack
                .padding(.bottom, 10)
                if segment != detailsList.last {
                    Divider()
                }
            }//ForEach
        }
        .padding(.all, 15)
        .background(CustomColor.bgView)
        .cornerRadius(15)
    }
}
