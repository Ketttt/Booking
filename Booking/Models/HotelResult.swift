//
//  HotelResult.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

// MARK: - HotelResult
struct HotelResult: Decodable {
    let id: Int
    let name, adress, priceForIt, ratingName: String
    let minimalPrice, rating: Int
    var imageUrls: [String]
    let aboutTheHotel: AboutTheHotel
}

// MARK: - AboutTheHotel
struct AboutTheHotel: Decodable {
    let description: String
    let peculiarities: [String]
}
