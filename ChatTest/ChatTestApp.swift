//
//  ChatTestApp.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import SwiftUI

@main
struct ChatTestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CTLoginScreen()
            }
        }
    }
}
