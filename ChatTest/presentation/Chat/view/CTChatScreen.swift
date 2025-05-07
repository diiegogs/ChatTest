//
//  CTChatScreen.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import SwiftUI

struct CTChatScreen: View {
    var body: some View {
        GeometryReader { _ in
            Color.gray.opacity(0.002)
            // Upload list user chats
            
            List {
            // Event for open conversation user
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    CTChatScreen()
}
