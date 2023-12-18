//
//  StringExtensions.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
    
    func isValidPhoneNumber() -> Bool {
        let phoneNumberRegex = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneNumberPredicate = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
        return phoneNumberPredicate.evaluate(with: self)
    }
}
