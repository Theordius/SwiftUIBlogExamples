//
//  IsRequired.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 01/12/2024.
//

import SwiftUI


struct IsRequiredKey: EnvironmentKey {
    static let defaultValue: Bool = false
}

extension EnvironmentValues {
    var isRequired: Bool {
        get { self[IsRequiredKey.self] }
        set { self[IsRequiredKey.self] = newValue }
    }
}




