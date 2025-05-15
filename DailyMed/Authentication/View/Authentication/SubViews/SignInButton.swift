//
//  SignIn-UpButton.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 13/05/25.
//

import SwiftUI

struct SignInButton: View {
    @State private var isPressed: Bool = false
    var body: some View {
        Button {
            print("holi2")
        } label: {
            Text("Sign In")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .foregroundStyle(Color.white)
                .background(LinearGradient(colors: [Color.cBlue1], startPoint: .bottom, endPoint: .top))
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
       
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    SignInButton()
        .padding(.all, 10)
}
