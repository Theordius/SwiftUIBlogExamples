//
//  AGMExample.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct AGMExample: View {

    // MARK: - Properties:
    @State private var count = 1
    let words = ["Bottle", "Person", "Goose", "Mouse", "Beer", "Peacock"]

    // MARK: - Body:
    var body: some View {
        ZStack(alignment: .topTrailing) {
            LinearGradient(
                colors: [.blue, .gray, .white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Select desired count")
                        .fontWeight(.heavy).bold()
                        .foregroundStyle(.yellow)
                        .font(.headline)
                        .foregroundStyle(.primary)

                    Spacer()

                    Stepper("Count: \(count)", value: $count, in: 0...15)
                        .background(in: .rect(cornerRadius: 8, style: .circular))
                        .labelsHidden()
                }

                ForEach(words, id: \.self) { word in
                    Text("^[\(count) \(word)](inflect: true)")
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

// MARK: - Preview:
#Preview {
    AGMExample()
}
