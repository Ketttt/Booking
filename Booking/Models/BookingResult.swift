//
//  BookingResult.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

// MARK: - BookingResult
struct BookingResult: Decodable {
    let id: Int
    let horating, numberOfNights, tourPrice, fuelCharge, serviceCharge: Int
    let ratingName, departure, arrivalCountry, tourDateStart, tourDateStop, room, nutrition, hotelName, hotelAdress: String
    
    //local
    var finalСost: String? {
        let finalCost = tourPrice + fuelCharge + serviceCharge
        return String(finalCost)
    }
}
