//
//  OnboardingView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 21.09.2023.
//

import SwiftUI

struct OnboardingView: View {
    //    MARK: - Properties
    
    var dictionaryCard: [DictionaryModel] = dictionaryData
    
    //    MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(dictionaryCard[0...2]) {
                item in
                DictionaryCardView(dictionaryCard: item)
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
//        .padding(.vertical, 0)
        .ignoresSafeArea()
    }
}
//    MARK: - Preview

#Preview {
    OnboardingView(dictionaryCard: dictionaryData)
}
