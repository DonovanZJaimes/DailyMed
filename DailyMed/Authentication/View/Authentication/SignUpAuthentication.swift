//
//  SignUpAuthentication.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 14/05/25.
//

import SwiftUI

struct SignUpAuthentication: View {
    @State private var email: String = ""
    @State private var errorEmail: String = ""
    @State private var password: String = ""
    @State private var errorPassword: String = ""
    
    var body: some View {
        ZStack(alignment: .center){
            Image("BackgroundPills")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 560)
                    .foregroundStyle(Color.white)
                    .shadow(color: .gray.opacity( 0.6), radius: 10, x: 0, y:  6 )
                    .overlay {
                        VStack {
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
                            SignUpButton(doesItRegister: true )
                                .padding(.top, 35)
                            Text("or sign up with")
                                .font(.system(.footnote, design: .default, weight: .regular))
                                .foregroundStyle(Color.cBlue3)
                                .padding(.top, 15)
                            GoogleAuthenticationButton()
                                .padding(.top, 15)
                            Spacer()
                            
                        }
                        .padding(.horizontal, 20)
                        
                    }
                    .padding(.top, 60)
            }
            
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    SignUpAuthentication()
}
