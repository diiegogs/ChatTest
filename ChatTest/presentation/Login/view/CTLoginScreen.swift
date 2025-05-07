//
//  CTLoginScreen.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import SwiftUI

struct CTLoginScreen: View {
    @StateObject private var viewModelLogin: CTLoginViewModel = CTLoginViewModel()
    
    init(){()}
    
    var body: some View {
        GeometryReader { _ in
            Color.gray.opacity(0.002)
            
            VStack(alignment: .center, spacing: 30.0) {
                Text("Login Test Chat")
                    .font(.system(size: 30.0, weight: .bold))
                    .padding()
                
                CTLoginPhotoView()
                
                Spacer()
                
                CTLoginFieldsView()
                
                Spacer()
                
                CTLoginButtonView(
                    actionButtonRegister: {
                        print("action disabled for this moment!")
                    },
                    actionButtonLogin: { [weak viewModelLogin] in
                        viewModelLogin?.callValidateUser { status in
                            if status {
                                print("Go to conversation")
                            } else {
                                viewModelLogin?.cleanFieldsLogin()
                            }
                        }
                    }
                )
                .scaledToFit()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            .environmentObject(viewModelLogin)
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .onAppear { [weak viewModelLogin] in
            viewModelLogin?.cleanFieldsLogin()
        }
    }
}

#Preview {
    CTLoginScreen()
        .environmentObject(CTLoginViewModel())
}
