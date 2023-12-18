//
//  AddTouristView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct AddTouristView: View {
    
    @EnvironmentObject var model: BookingViewModel
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center, spacing: 8) {
                Text(Constants.BuyerInformation.addTourist)
                    .font(.system(size: 22))
                
                Spacer()
                
                Image(.plusIcon)
                    .frame(width: 16, height: 16)
                    .padding(.top, 2)
                    .onTapGesture {
                        withAnimation {
                            model.tourists.append(TouristData())
                        }
                    }
            }//HStack
        }//VStack
        .padding(.all, 16)
        .background(.white)
        .cornerRadius(10)
    }
}

struct TouristView_Previews: PreviewProvider {
    static var previews: some View {
        AddTouristView()
            .environmentObject(BookingViewModel())
    }
}
