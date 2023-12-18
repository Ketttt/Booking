//
//  HTTPMethod.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

enum HTTPMethod {
    case post
    case get
    case put
    case patch
    case delete
    
    var method: String {
        switch self {
        case .post: return "POST"
        case .get: return "GET"
        case .put: return "PUT"
        case .patch: return "PATCH"
        case .delete: return "DELETE"
        }
    }
}
