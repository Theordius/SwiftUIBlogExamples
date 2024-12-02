//
//  CustomTextField.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 01/12/2024.
//

import SwiftUI

struct CustomInputField: View {

    //MARK: - Properties:
    @Environment(\.isRequired) var isRequired
    @Binding var text: String
    @State var isFocused: Bool = false

    var placeholder: String
    var textContentType: UITextContentType?

    //MARK: - Body:
    var body: some View {
        TextField(placeholder, text: $text) { isFocused = $0 }
            .textContentType(textContentType)
            .customTextFieldStyle(
                isFocused: isFocused,
                isRequired: isRequired,
                bordered: true
            )
    }
}

//MARK: - Preview:
#Preview {
    CustomInputField(
        text: .constant("Test"),
        isFocused: false,
        placeholder: "Name"
    )
        .padding(.horizontal, 16)
}
