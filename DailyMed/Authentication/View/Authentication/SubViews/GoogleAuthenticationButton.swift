//
//  GoogleAuthenticationButton.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 13/05/25.
//

import SwiftUI

struct GoogleAuthenticationButton: View {
    @State private var isPressed: Bool = false
   
    var body: some View {
        Button {
            print("holi2")
        } label: {
            HStack {
                Image("LogoGoogle")
                Text("Google")
                    .font(.headline)
                    .foregroundStyle(.black)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            .shadow(color: .gray.opacity(0.4), radius: 4, x: 0, y: 2)
            .shadow(color: .gray.opacity(isPressed ? 0.6 : 0.4), radius: isPressed ? 10 : 4, x: 0, y: isPressed ? 6 : 2)
            .scaleEffect(isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: isPressed)
            
        }
        
        .simultaneousGesture(
            LongPressGesture(minimumDuration: 0.1) 
                .onEnded { _ in
                    isPressed = false
                }
                .onChanged { _ in
                    isPressed = true
                }
            
        )
    }
}

#Preview {
    GoogleAuthenticationButton()
}
