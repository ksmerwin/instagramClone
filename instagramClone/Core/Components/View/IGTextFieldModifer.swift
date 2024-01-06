//
//  IGTextFieldModifer.swift
//  instagramClone
//
//  Created by Developer on 1/2/24.
//


import SwiftUI

struct IGTextFieldModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal, 24)
        .padding(.top)
    }
}
