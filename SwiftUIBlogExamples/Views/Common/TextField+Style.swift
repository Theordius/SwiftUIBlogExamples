//
//  TextField+Style.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 01/12/2024.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    
    var isRequired: Bool = false
    var isFocused: Bool = false
    var bordered: Bool = true
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.gray.opacity(0.3))
            .cornerRadius(8)
            .if(bordered) { view in
                view.overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(
                            isFocused ? Color.blue : Color.gray,
                            lineWidth: 2
                        )
                )
            }
            .if(isRequired) { view in
                view.overlay(
                    Image(systemName: "asterisk")
                        .imageScale(.small)
                        .padding([.top, .trailing], 4)
                        .foregroundColor(.red),
                    alignment: .topTrailing
                )
            }
    }
}

extension View {
    func customTextFieldStyle(isFocused: Bool, isRequired: Bool, bordered: Bool = true) -> some View {
        self.textFieldStyle(CustomTextFieldStyle(isRequired: isRequired, isFocused: isFocused, bordered: bordered))
    }
}
