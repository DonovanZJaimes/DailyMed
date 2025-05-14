//
//  TextFieldsAuthentication.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 14/05/25.
//

import SwiftUI

struct TextFieldsAuthentication: View {
    @Binding var email: String
    @Binding var errorEmail: String
    @Binding var password: String
    @Binding var errorPassword: String
    var body: some View {
        VStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 0) {
                TextField("Enter your Email", text: $email)
                    .padding(.horizontal, 10)
                    .frame(height: 48)
                    //.padding(.vertical, 10)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled()
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(style: StrokeStyle(lineWidth: 1))
                            .foregroundStyle(Color.cBlue2)
                    }
                if !errorEmail.isEmpty {
                    Text(errorEmail)
                        .font(.callout)
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                        .lineLimit(1)
                }
            }
            
            VStack(alignment: .leading, spacing: 0) {
               
                SecureField("Enter your password", text: $password)
                    .padding(.horizontal, 10)
                    //.padding(.vertical, 10)
                    .frame(height: 48)
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(style: StrokeStyle(lineWidth: 1))
                            .foregroundStyle(Color.cBlue2)
                    }
                if !errorPassword.isEmpty {
                    Text(errorPassword)
                        .font(.callout)
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                        .lineLimit(1)
                }
            }
            
        }
    }
}

#Preview {
    @Previewable @State var email: String = ""
    @Previewable @State var errorEmail: String = ""
    @Previewable @State var password: String = ""
    @Previewable @State var errorPassword: String = "The password is incorrect"
    TextFieldsAuthentication(email: $email, errorEmail: $errorEmail, password: $password, errorPassword: $errorPassword)
}
