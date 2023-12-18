//
//  ViewExtensions.swift
//  Booking
//
//  Created by Katerina Ivanova on 18.12.2023.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
    
    func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
        overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
    }
    
    func navSets(navTitle: String) -> some View {
        ModifiedContent(content: self, modifier: NavModifier(navTitle: navTitle))
    }
}
