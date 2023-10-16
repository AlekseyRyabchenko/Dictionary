//
//  DictionaryApp.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 20.09.2023.
//

import SwiftUI

@main
struct DictionaryApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
