//
//  TextFieldAuthenticationView.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 13/05/25.
//

import SwiftUI

struct TextFieldAuthenticationView: View {
    @Binding var username: String
    @Binding var errorUsername: String
    @Binding var password: String
    @Binding var errorPassword: String
    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Username")
                    .font(.body)
                TextField("Enter your username", text: $username)
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(.vertical, 10)
                Divider()
                    .frame(height: 1.0)
                    .foregroundStyle(Color.cBlue2)
                    .background(Color.cBlue2)
                if !errorUsername.isEmpty {
                    Text(errorUsername)
                        .font(.callout)
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                }
            }
            .padding(.horizontal, 20)
            VStack(alignment: .leading, spacing: 0) {
                Text("Password")
                    .font(.body)
                SecureField("Enter your password", text: $password)
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(.vertical, 10)
                Divider()
                    .frame(height: 1.0)
                    .foregroundStyle(Color.cBlue2)
                    .background(Color.cBlue2)
                if !errorPassword.isEmpty {
                    Text(errorPassword)
                        .font(.callout)
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    @Previewable @State var username: String = ""
    @Previewable @State var errorUsername: String = ""
    @Previewable @State var password: String = ""
    @Previewable @State var errorPassword: String = "The password is incorrect"
    TextFieldAuthenticationView(username: $username, errorUsername: $errorUsername, password: $password, errorPassword: $errorPassword)
    
    
}
