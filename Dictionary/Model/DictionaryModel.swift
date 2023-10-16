//
//  DictionaryModel.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 21.09.2023.
//

import SwiftUI

// MARK: - Dictionary data model

struct DictionaryModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
