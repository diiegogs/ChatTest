//
//  CTLoginButtonView.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import SwiftUI

struct CTLoginButtonView: View {
    private var actionButtonRegister: (() -> Void) = { }
    private var actionButtonLogin: (() -> Void) = { }
    
    init(
        actionButtonRegister: @escaping () -> Void,
        actionButtonLogin: @escaping () -> Void) {
            self.actionButtonRegister = actionButtonRegister
            self.actionButtonLogin = actionButtonLogin
        }
    
    var body: some View {
        HStack {
            Button {
                self.actionButtonRegister()
            } label: {
                ZStack {
                    Color.white.opacity(0.002)
                    VStack {
                        HStack {
                            
                            Text("Registrarse")
                                .foregroundStyle(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.white)
                            
                        }
                    }
                }
            }
            
            Button {
                self.actionButtonLogin()
            } label: {
                ZStack {
                    Color.white.opacity(0.002)
                    VStack {
                        HStack {
                            Text("Iniciar sesión")
                                .foregroundStyle(.black)
                            
                            ZStack {
                                Circle()
                                    .foregroundStyle(.blue)
                                    .frame(width: 30.0, height: 30.0)
                                Image(systemName: "arrow.right")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CTLoginButtonView() {
        
    } actionButtonLogin: {
        
    }
}
