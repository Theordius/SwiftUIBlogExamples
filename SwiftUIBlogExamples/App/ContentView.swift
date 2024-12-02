//
//  ContentView.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct ContentView: View {

    //MARK: - Properties:
    @State private var selectedTab: Tab = .agm

    enum Tab {
        case agm, stringCatalog, customKey
    }

    //MARK: - Body:
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                AGMExample()
                    .tag(Tab.agm)
                    .tabItem {
                        Label("AGM Example", systemImage: "arrow.triangle.merge")
                    }

                StringCatalogExample()
                    .tag(Tab.stringCatalog)
                    .tabItem {
                        Label("String Catalog", systemImage: "text.book.closed")
                    }

                CustomEnvironmentKeyExample()
                    .tag(Tab.customKey)
                    .tabItem {
                        Label("Custom Key Example", systemImage: "key.horizontal.fill")
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(navigationTitle(for: selectedTab))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    LanguageOptionsMenu(appData: .init())
                }
            }
            .tint(.accentColor)
            .onAppear {
                UITabBar.appearance().backgroundColor = UIColor.systemBackground
                UITabBar.appearance().isTranslucent = true
            }
        }
    }

    //MARK: - Private functions:
    private func navigationTitle(for tab: Tab) -> String {
        switch tab {
        case .agm:
            return "AGM Example"
        case .stringCatalog:
            return "String Catalog"
        case .customKey:
            return "Custom Key Example"
        }
    }
}
#Preview {
    ContentView()
        .environmentObject(AppData())
}
