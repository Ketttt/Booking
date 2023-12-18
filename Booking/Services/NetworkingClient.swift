//
//  NetworkingClient.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

final class NetworkingClient {
    
    static let shared = NetworkingClient()
    
    func fetch<T: Decodable>(from endpoint: Endpoint) async throws -> T {
        
        let (data, response) = try await URLSession.shared.data(for: endpoint.request)
        endpoint.request.inLogger(data: data, response: response as? HTTPURLResponse)
        guard let httpResponse = response as? HTTPURLResponse,
              200...299 ~= httpResponse.statusCode else {
            
            let code = (response as? HTTPURLResponse)?.statusCode
            switch code {
            case 401:
                throw APIError.tokenError
            default:
                throw APIError.apiError(text: "Faild", code: code)
            }
        }
        
        let json = JSONDecoder()
        json.keyDecodingStrategy = .convertFromSnakeCase
        let jsonDecoder = try json.decode(T.self, from: data)
        
        return jsonDecoder
    }
}

