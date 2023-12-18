//
//  StringExtension.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import Foundation

extension String {
    func formattedMask(text: String, mask: String?) -> String {
        var phone = text
        if phone.first != "7" && phone.count == 1 {
            phone = "7" + phone
        }
        let cleanPhoneNumber = phone.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        var result = ""
        var index = cleanPhoneNumber.startIndex
        if let mask = mask {
            for ch in mask where index < cleanPhoneNumber.endIndex {
                if ch == "X" {
                    result.append(cleanPhoneNumber[index])
                    index = cleanPhoneNumber.index(after: index)
                } else {
                    result.append(ch)
                }
            }
        }
        return result
    }
}
