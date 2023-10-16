//
//  NutrientsView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 28.09.2023.
//

import SwiftUI

struct NutrientsView: View {
    //    MARK: - Properties
    
    var dictionary: DictionaryModel
    
    let nutriens: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //    MARK: - Body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g.") {
                ForEach(0 ..< nutriens.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutriens[item])
                        }
                        .foregroundStyle(dictionary.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(dictionary.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: GroupBox
    }
}
//    MARK: - Preview

#Preview {
    NutrientsView(dictionary: dictionaryData[0])
}
