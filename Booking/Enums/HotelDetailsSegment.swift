//
//  HotelDetailsSegment.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

enum HotelDetailsSegment {
    case comfort
    case include
    case notInclude
    
    var id: Int {
        switch self {
        case .comfort: return 0
        case .include: return 1
        case .notInclude: return 2
        }
    }
    
    var title: String {
        switch self {
        case .comfort: return "Удобства"
        case .include: return "Что включено"
        case .notInclude: return "Что не включено"
        }
    }
    
    var image: String {
        switch self {
        case .comfort: return "conveniences"
        case .include: return "included"
        case .notInclude: return "notIncluded"
        }
    }
}
