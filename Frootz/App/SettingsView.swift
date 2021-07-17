//
//  SettingsView.swift
//  Frootz
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Frootz", labelImage: "info.circle")
                        
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are low in fat, sodium and calories!")
                        }
                        Button(action: {
                            isOnboarding = true
                        }) {
                            Text("is onboarding")
                                .font(.title)
                        }
                    }
                    
                    
                    //MARK: - SECTION 2
                    
                    
                    //MARK: - SECTION 3
                    
                    Text("hey")
                    
                } // VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        })
                .padding()
            } // SCROLL
        } // NAVIGATION
    }
}







//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
        
    }
}
