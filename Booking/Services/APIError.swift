//
//  APIError.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case invalidSerialization
    case badHTTPResponse
    case apiError(text: String?, code: Int?)
    case fileNotFound
    case invalidDecoding
    case tokenError
    case incorrectLogin
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL: return "Неверный URL"
        case .invalidSerialization: return "Не удалось преобразовать данные"
        case .badHTTPResponse: return "Что-то пошло не так. Попробуйте позднее"
        case .apiError(let text, let code):
            if let code = code, code != 0 {
                return "\(text ?? ""). Код ошибки: \(code)"
            } else {
                return "\(text ?? "")"
            }
        case .fileNotFound: return "Файл не найден"
        case .invalidDecoding: return "Ошибка декодирования"
        case .tokenError: return "Ошибка токена"
        case .incorrectLogin: return "У вас нет доступа к системе. Чтобы получить доступы для входа, обратитесь к ответственным лицам"
        }
    }
}
