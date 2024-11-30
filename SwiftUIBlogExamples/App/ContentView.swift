//
//  ContentView.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView {
                AGMExample()
                    .tabItem {
                        Label("AGM Example", systemImage: "arrow.triangle.merge")
                    }
                    .tag(1)

                StringCatalogExample()
                    .tabItem {
                        Label("String Catalog", systemImage: "text.book.closed")
                    }
                    .tag(2)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Swift UI Blog Examples")
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
}

#Preview {
    ContentView()
        .environmentObject(AppData())
}
