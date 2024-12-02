//
//  CustomEnvironmentKeyExample.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 01/12/2024.
//

import SwiftUI

enum FocusedField: Hashable {
    case name
    case surname
}

struct CustomEnvironmentKeyExample: View {

    //MARK: - Properties:
    @FocusState private var focusedField: FocusedField?
    
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var isRequired: Bool = false

    //MARK: - Body:
    var body: some View {
        
        Form {

            Toggle("Is Required", isOn: $isRequired)
            
            CustomInputField(
                text: $name,
                isFocused: focusedField == .name,
                placeholder: "First Name",
                textContentType: .name
            )
            .isRequired(isRequired)
            
            .focused($focusedField, equals: .name)
            
            CustomInputField(
                text: $surname,
                isFocused: focusedField == .surname,
                placeholder: "Last Name",
                textContentType: .name
            )
            .isRequired(isRequired)
            .focused($focusedField, equals: .surname)
        }
        .padding()
        .navigationTitle("Custom Environment Example")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//MARK: - Preview:
#Preview {
    CustomEnvironmentKeyExample()
}
