//
//  SignUpButton.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 14/05/25.
//

import SwiftUI
import FirebaseAnalytics

struct SignUpButton: View {
    @State private var isPressed: Bool = false
    @State private var isRedirectedToView: Bool = false
    
    var doesItRegister: Bool
    var body: some View {
        Button {
            if doesItRegister {
                print("nos registramos")
                Analytics.logEvent("SignUp_button_tapped", parameters: ["method": "email_and_password"])
            }
            else {
                isRedirectedToView = true
                Analytics.logEvent(AnalyticsEventScreenView, parameters: [AnalyticsParameterScreenName: "SignUpAuthentication"])
                
                
            }
            
        } label: {
            Text("Sign Up")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .foregroundStyle(Color.cBlue1)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(color: .gray.opacity(isPressed ? 0.6 : 0.4), radius: isPressed ? 10 : 4, x: 0, y: isPressed ? 6 : 2)
                .scaleEffect(isPressed ? 0.95 : 1.0)
                .animation(.easeInOut(duration: 0.2), value: isPressed)
        }
        .simultaneousGesture(
            
            LongPressGesture(minimumDuration: 0.1)
                .onChanged({ _ in
                    isPressed = true
                })
                .onEnded({ _ in
                    isPressed = false
                })
            
        )
        .sheet(isPresented: $isRedirectedToView) {
            SignUpAuthentication()
                .presentationDetents([.large])
                
                
        }
       
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    SignUpButton(doesItRegister: false)
        .padding(.all, 10)
}
