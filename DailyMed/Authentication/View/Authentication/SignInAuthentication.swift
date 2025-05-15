//
//  SignInAuthentication.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 14/05/25.
//

import SwiftUI

struct SignInAuthentication: View {
    @State private var email: String = ""
    @State private var errorEmail: String = ""
    @State private var password: String = ""
    @State private var errorPassword: String = ""
    //@State private var isRedirectedToView: Bool = true
    
    var body: some View {
        ZStack(alignment: .center){
            //Image("b1w")
            Image("pill3")
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
                            SignInBox(email: $email, errorEmail: $errorEmail, password: $password, errorPassword: $errorPassword)
                            
                        }
                        .padding(.horizontal, 20)
                        
                    }
                    .padding(.top, 60)
                SignUpButton(doesItRegister: false)
                    .frame(width: 350)
            }
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    SignInAuthentication()
}
