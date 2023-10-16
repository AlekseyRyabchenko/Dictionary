//
//  SourceLinkView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 28.09.2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content sourse")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.m.wikipedia.org")!)
                Image(systemName: "arrow.up.right.square.fill")
            } //: HStack
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
