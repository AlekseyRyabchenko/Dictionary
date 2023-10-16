//
//  DictionaryDetailView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 22.09.2023.
//

import SwiftUI

struct DictionaryDetailView: View {
    //    MARK: - Properties
    
    var dictionary: DictionaryModel
    
    //    MARK: - Body
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    DictionaryHeaderView(dictionary: dictionary)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(dictionary.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(dictionary.gradientColors[1])
                        
                        // Headline
                        Text(dictionary.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // Nutrients
                        
                        NutrientsView(dictionary: dictionary)
                        
                        // Subheadline
                        Text("Learn more about \(dictionary.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(dictionary.gradientColors[1])
                        
                        // Deskription
                        Text(dictionary.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
//                .navigationBarTitle(dictionary.title, displayMode: .inline)
//                .navigationBarHidden(true)
            } //: ScrollView
            .ignoresSafeArea()
        } //: NavigationStack
    }
}
//    MARK: - Preview

#Preview {
    DictionaryDetailView(dictionary: dictionaryData[0])
}
