//
//  AuthenticationView.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 12/05/25.
//

import SwiftUI

struct AuthenticationView: View {
    @Binding var authMode: AuthMode
    @State private var username: String = ""
    @State private var errorUsername: String = ""
    @State private var password: String = ""
    @State private var errorPassword: String = ""
    @State private var hasAnAccount: Bool = false
    
    var body: some View {
        
        VStack {
            VStack(spacing: 30) {
                Image(systemName: "pill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .padding(.top, 20)
                Text(authMode.rawValue)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.cBlue2)
                TextFieldAuthenticationView(username: $username, errorUsername: $errorUsername, password: $password, errorPassword: $errorPassword)
            }
            .padding(.top, 40)
            Spacer()
            VStack(spacing: 20) {
                SignIn_UpButton(authMode: $authMode)
                
                Text("or")
                    .font(.body)
                    .foregroundStyle(Color.cGray3)
                
                GoogleAuthenticationButton()
            }
            Spacer()
            if authMode == .signIn {
                HStack {
                    Text("Don´t have an acount?")
                        .font(.body)
                        .foregroundStyle(Color.cGray3)
                    Button("Sign Up") {
                        print("holi 3")
                        hasAnAccount = true
                        authMode = .signUp
                    }
                    .bold()
                    .foregroundStyle(Color.cBlue1)
                }.padding(.bottom, 20)
            }
            
        }
        .sheet(isPresented: $hasAnAccount) {
            hasAnAccount = false
            authMode = .signIn
        } content: {
            AuthenticationView(authMode: $authMode)
        }

        
    }
}

#Preview {
    @Previewable @State var mode: AuthMode = .signIn
    AuthenticationView(authMode: $mode)
}
