//
//  SwiftUIBlogExamplesApp.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

@main
struct SwiftUIBlogExamplesApp: App {

    //MARK: - Properties:
    @StateObject var appData =  AppData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, Locale(identifier: appData.language))
                .environmentObject(appData)
        }
    }
}
