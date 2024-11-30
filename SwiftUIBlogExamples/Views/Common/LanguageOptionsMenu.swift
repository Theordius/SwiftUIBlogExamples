//
//  LanguageOptionsMenu.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct LanguageOptionsMenu: View {

    //MARK: - Properties:
    @EnvironmentObject var appData: AppData

    //MARK: - Body:
    var body: some View {
       languageMenu
    }

    //MARK: - View Builder properties:
    @ViewBuilder
    private var languageMenu: some View {
        Menu {
            Button("English") {
                appData.language = "en"
            }

            Button("Polish") {
                appData.language = "pl"
            }
            Button("Spanish") {
                appData.language = "es"
            }
        } label : {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }

}

#Preview {
    LanguageOptionsMenu()
        .environmentObject(AppData())
}
