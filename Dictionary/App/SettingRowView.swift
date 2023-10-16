//
//  SettingRowView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 04.10.2023.
//

import SwiftUI

struct SettingRowView: View {
    //    MARK: - Properties
    
    var content: String
    var name: String?
    var linkLabel: String?
    var linkDestination: String?
    
    //    MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 3)
            HStack {
                Text(content).foregroundStyle(Color(.gray))
                Spacer()
                if (name != nil) {
                    Text(name!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                        .foregroundStyle(Color(.blue))
                } else {
                    EmptyView()
                }
            }
        }
    }
}
//    MARK: - Preview

#Preview {
    SettingRowView(content: "Developer", name: "Aleksey Ryabchenko")
}
