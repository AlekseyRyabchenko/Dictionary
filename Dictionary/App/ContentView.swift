//
//  ContentView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 20.09.2023.
//

import SwiftUI

struct ContentView: View {
    //    MARK: - Properties
    
    @State private var isShowingSettings: Bool = false
    
    var dictionaryVar: [DictionaryModel] = dictionaryData
    
    //    MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(dictionaryVar) { item in
                    NavigationLink(destination: DictionaryDetailView(dictionary: item)) {
                        DictionaryRowView(dictionaryRow: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .padding(.horizontal, -10)
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        } //: Navigation
//        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//    MARK: - Preview
#Preview {
    ContentView(dictionaryVar: dictionaryData)
}
