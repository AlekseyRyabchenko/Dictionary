//
//  DictionaryHeaderView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 28.09.2023.
//

import SwiftUI

struct DictionaryHeaderView: View {
    //    MARK: - Properties
    
    var dictionary: DictionaryModel
    
    @State private var isAnimation: Bool = false
    
    //    MARK: - Body
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: dictionary.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(dictionary.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimation ? 1.0 : 0.5)
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeInOut(duration: 0.9)) {
                isAnimation = true
            }
        }
    }
}
//    MARK: - Preview

#Preview {
    DictionaryHeaderView(dictionary: dictionaryData[0])
}
