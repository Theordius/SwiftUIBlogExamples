//
//  GradientBackground.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct GradientBackground: View {

    // MARK: - Properties
    let colors: [Color]
    let opacity: CGFloat

    init(
        colors: [Color],
        opacity: CGFloat = 1
    ) {
        self.colors = colors
        self.opacity = opacity
    }


    // MARK: - Body:
    var body: some View {
        ZStack {
            LinearGradient(
                colors: colors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(opacity)
            .ignoresSafeArea()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    GradientBackground(
        colors: [.red, .green, .blue]
    )
}
