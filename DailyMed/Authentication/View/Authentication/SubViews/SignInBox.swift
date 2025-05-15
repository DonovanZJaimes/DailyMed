//
//  SignInBox.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 15/05/25.
//

import SwiftUI

struct SignInBox: View {
    @Binding var email: String
    @Binding var errorEmail: String
    @Binding var password: String
    @Binding var errorPassword: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("We ")
                .foregroundStyle(Color.cBlue2)
            + Text("organize ")
                .foregroundStyle(Color.cBlue1)
            + Text("your ")
                .foregroundStyle(Color.cBlue2)
            + Text("medications")
                .foregroundStyle(Color.cBlue1)
            
            Text("Get organized every day when you sign in")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundStyle(Color.cBlue2)
        }
        .font(.title2)
        .bold()
        .padding(.top, 30)
        
        TextFieldsAuthentication(email: $email, errorEmail: $errorEmail, password: $password, errorPassword: $errorPassword)
            .padding(.top, 20)
        SignInButton()
            .padding(.top, 35)
        Text("or sign in with")
            .font(.system(.footnote, design: .default, weight: .regular))
            .foregroundStyle(Color.cBlue3)
            .padding(.top, 15)
        GoogleAuthenticationButton()
            .padding(.top, 15)
        Spacer()
        Text("I don´t have an account")
            .font(.system(.footnote, design: .default, weight: .regular))
            .foregroundStyle(Color.cBlue3)
            .padding(.bottom, 20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable @State var email: String = ""
    @Previewable @State var errorEmail: String = ""
    @Previewable @State var password: String = ""
    @Previewable @State var errorPassword: String = ""
    SignInBox(email: $email, errorEmail: $errorEmail, password: $password, errorPassword: $errorPassword)
        .padding(.all, 20)
}
