//
//  SettingsLabelView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 04.10.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    //    MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    //    MARK: - Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//    MARK: - Preview
#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
