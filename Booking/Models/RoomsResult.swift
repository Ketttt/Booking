//
//  RoomsResult.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

// MARK: - RoomsResult
struct RoomsResult<T: Decodable>: Decodable {
    var rooms: [T]
}

// MARK: - Room
struct Room: Decodable, Identifiable {
    let id, price: Int
    let name, pricePer: String
    let peculiarities: [String]?
    let imageUrls: [String]
}
