//
//  ErrorResult.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

struct ErrorResult<T: Decodable>: Decodable {
    let errorData: T?
    let errorMessage: String?
    let errorCode: String?
}

struct ErrorDataResult: Decodable {
    let ids: [String]?
}
