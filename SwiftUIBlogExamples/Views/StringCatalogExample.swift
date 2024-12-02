//
//  StringCatalogExample.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

struct StringCatalogExample: View {

    // MARK: - Properties:
    let words: [LocalizedStringKey] = ["Bottle", "Person", "Goose", "Mouse", "Beer", "Peacock"]

    //MARK: - Body:
    var body: some View {
            ZStack(alignment: .topTrailing) {
                GradientBackground(colors: [.blue, .gray, .white], opacity: 1.0)
                VStack(alignment: .center, spacing: 8) {
                    ForEach(words.indices, id: \.self) { index in
                        HStack(alignment: .center) {
                            
                            Spacer()
                            
                            Text(words[index])
                            
                            Spacer()
                        }
                        .foregroundStyle(.yellow)
                        .fontWeight(.black)
                        .font(.headline)
                        .foregroundColor(.primary)
                    }
                }
                .padding(.vertical, 8)
                .background(
                    GradientBackground(colors: [.black, .gray, .black, .white], opacity: 1.0)
                )
                .clipShape(.rect(cornerRadius: 4, style: .continuous))
                .padding(16)
                
            }

    }
}

#Preview {
    StringCatalogExample()
}
