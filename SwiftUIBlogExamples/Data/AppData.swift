//
//  AppData.swift
//  SwiftUIBlogExamples
//
//  Created by Rafał Gęsior on 30/11/2024.
//

import SwiftUI

final class AppData: ObservableObject {
    @AppStorage("language") var language = "en"
}
