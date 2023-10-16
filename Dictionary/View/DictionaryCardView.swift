//
//  DictionaryCardView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 21.09.2023.
//

import SwiftUI

struct DictionaryCardView: View {
//    MARK: - Properties
    
    var dictionaryCard: DictionaryModel
    
    @State private var isAnimation: Bool = false
    
//    MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Dictionary: Image
                Image(dictionaryCard.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.5)
                
                // Dictionary: Title
                Text(dictionaryCard.title)
                    .foregroundStyle(Color(.white))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Dictionary: Headline
                Text(dictionaryCard.headline)
                    .foregroundStyle(Color(.white))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button: Start
                StartButtonView()
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
            } //: VStack
        } //: ZStack
        .onAppear {
            withAnimation(.easeInOut(duration: 0.9)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: dictionaryCard.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
//        .padding(.horizontal, 10)
        .ignoresSafeArea()
    }
}

//    MARK: - Preview

#Preview {
    DictionaryCardView(dictionaryCard: dictionaryData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
