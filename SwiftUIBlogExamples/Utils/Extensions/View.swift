//
//  View.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 01/12/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }

    func isRequired(_ makeRequired: Bool = true) -> some View {
        environment(\.isRequired, makeRequired)
    }
}
