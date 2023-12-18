//
//  CustomTextFieldStyle.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        return configuration
            .textFieldStyle(.plain)
            .padding(.horizontal, 16)
            .autocorrectionDisabled(false)
            .textInputAutocapitalization(.never)
    }
}
