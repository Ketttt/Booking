//
//  HotelViewModel.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

final class HotelViewModel: ObservableObject {
    
    //MARK: - Properties
    @Published var hotelData: HotelResult?
    @Published var loading = false
    @Published var errorPopup = false
    let id = "d144777c-a67f-4e35-867a-cacc3b827473"
    
    //MARK: - init
    init(){
        Task{
             await getHotels()
        }
    }
    
    //MARK: - Networking
    @MainActor
    private func getHotels() async {
        self.loading = true
        let endpoint: Endpoint = .hotelDetail(id: id)
        do {
            let result: HotelResult = try await NetworkingClient.shared.fetch(from: endpoint)
            self.hotelData = result
            self.loading = false
        } catch {
            self.loading = false
            errorPopup = true
        }
    }
    
}
