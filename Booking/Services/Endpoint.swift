//
//  Endpoint.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

//MARK: - Cases
enum Endpoint {
    case hotelDetail(id: String)
    case roomDetail(id: String)
    case bookingDetail(id: String)

    //MARK: - Request
    var request: URLRequest {
        return ApiRequest(endpoint: self).request
    }
    
}
