//
//  SettingsView.swift
//  Dictionary
//
//  Created by Aleksey Ryabchenko on 29.09.2023.
//

import SwiftUI

struct SettingsView: View {
    //    MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false
    
    //    MARK: - Body
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    
                    GroupBox (
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "perspective")) {
                        Divider().padding(.vertical, 3)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(Color.green)
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemGroupedBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Applcation", labelImage: "apps.iphone")
                    ) {
                        
                        SettingRowView(content: "Developer", name: "Aleksey Ryabchenko")
                        SettingRowView(content: "Designer", name: "Tatiana Ryabchenko")
                        SettingRowView(content: "Compatibility", linkLabel: "iOS 17", linkDestination: "www.apple.com/ios/ios-17/")
                        SettingRowView(content: "SwiftUI", name: "5.0")
                        SettingRowView(content: "Version", name: "1.1.0")
                        
                    } //: Box
                    
                } //: VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: ScrollView
        } //: NavigationStack
    }
}
//    MARK: - Preview

#Preview {
    SettingsView()
}
