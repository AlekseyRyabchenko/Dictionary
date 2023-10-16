//
//  DictionaryRowView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 22.09.2023.
//

import SwiftUI

struct DictionaryRowView: View {
    
    //    MARK: - Properties
    
    var dictionaryRow: DictionaryModel
    
    //    MARK: - Body
    
    var body: some View {
        HStack {
            Image(dictionaryRow.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: dictionaryRow.gradientColors), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(dictionaryRow.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(dictionaryRow.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            } //: VStack
        } //: HStack
    }
}

//    MARK: - Preview

#Preview {
    DictionaryRowView(dictionaryRow: dictionaryData[0])
}
