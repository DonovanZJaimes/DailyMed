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
                        .font(.system(size: 12, weight: .light, design: .rounded))
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                        .lineLimit(3)
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
                        .font(.system(size: 12, weight: .light, design: .rounded))
                        .foregroundStyle(Color.red)
                        .padding(.top, 5)
                        .lineLimit(3)
                }
            }
            
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable @State var email: String = ""
    @Previewable @State var errorEmail: String = ""
    @Previewable @State var password: String = ""
    @Previewable @State var errorPassword: String = "The password must have at least one lowercase letter, one uppercase letter, one number, one special character, and more than 6 characeres"
    TextFieldsAuthentication(email: $email, errorEmail: $errorEmail, password: $password, errorPassword: $errorPassword)
        .padding(.all, 20)
}
