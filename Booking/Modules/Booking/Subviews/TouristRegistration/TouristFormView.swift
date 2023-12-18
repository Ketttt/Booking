//
//  TouristFormView.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct TouristFormView: View {
    
    @EnvironmentObject var model: BookingViewModel
    @State var showingActionSheet: Bool = false
    
    var body: some View {
        ForEach($model.tourists.indices, id: \.self) { index in
            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .center, spacing: 8) {
                    
                    Text("\(index + 1) турист")
                        .font(.system(size: 22))
                    
                    Spacer()
                    
                    Image(.blueDownArrow)
                        .frame(width: 16, height: 16)
                        .padding(.top, 2)
                        .onTapGesture {
                            withAnimation {
                                model.tourists[index].isShowingContent.toggle()
                                model.tourists[index].isRotatingForm = model.tourists[index].isShowingContent ? -180 : 0
                            }
                        }
                        .rotationEffect(.degrees(model.tourists[index].isRotatingForm))
                }//HStack
                
                if model.tourists[index].isShowingContent  {
                    touristTextfield(tourist: $model.tourists[index], model: model)
                        .padding(.bottom, 12)
                }//if showCon
                
            }//VStack
            .padding(.all, 16)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct TouristFormView_Previews: PreviewProvider {
    static var previews: some View {
        TouristFormView()
            .environmentObject(BookingViewModel())
    }
}
