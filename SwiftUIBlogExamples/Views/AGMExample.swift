//
//  AGMExample.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct AGMExample: View {

    // MARK: - Properties:
    @Environment(\.colorScheme) var colorScheme
    @State private var count = 1

    private let words = ["Bottle", "Person", "Goose", "Mouse", "Beer", "Peacock"]

    // MARK: - Body:
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topTrailing) {
                GradientBackground(colors: [.blue, .gray, .white], opacity: 1.0)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Select desired count")
                            .fontWeight(.heavy).bold()
                            .foregroundStyle(.yellow)
                            .font(.headline)
                            .foregroundStyle(colorScheme == .dark ? .primary : .secondary)
                        
                        Spacer()
                        
                        Stepper("Count: \(count)", value: $count, in: 0...15)
                            .background(in: .rect(cornerRadius: 8, style: .circular))
                            .labelsHidden()
                    }
                    
                    ForEach(words.indices, id: \.self) { index in
                        Text(LocalizedStringKey("^[\(count) \(words[index])](inflect: true)"))
                            .foregroundStyle(.white)
                            .font(.headline)
                            .bold()
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            LinearGradient(
                                colors: [.gray, .black.opacity(0.8), .gray],
                                startPoint: .top,
                                endPoint: .bottomLeading
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 8)
                )
                .padding()
            }
        }
    }
}

// MARK: - Preview:
#Preview {
    AGMExample()
}
