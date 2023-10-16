//
//  StartButtonView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 21.09.2023.
//

import SwiftUI

struct StartButtonView: View {
    //    MARK: - Properties
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    //    MARK: - Body
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                    .tint(Color.white)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .tint(Color.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //: Button
    }
}

//    MARK: - Preview
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
