//
//  FrootzApp.swift
//  Frootz
//
//  Created by Teemo Norman on 7/16/21.
//

import SwiftUI

@main
struct FrootzApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
            
        }
    }
}
