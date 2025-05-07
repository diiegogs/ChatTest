//
//  CTLoginFieldsView.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import SwiftUI

struct CTLoginFieldsView: View {
    @EnvironmentObject var viewModelLogin: CTLoginViewModel

    var body: some View {
        VStack(spacing: 40.0) {
            TextField("Username", text: $viewModelLogin.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            
            SecureField("Contraseña", text: $viewModelLogin.magic)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#Preview {
    CTLoginFieldsView()
        .environmentObject(CTLoginViewModel())
}
