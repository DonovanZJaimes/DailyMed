//
//  SignIn-UpButton.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 13/05/25.
//

import SwiftUI

struct SignIn_UpButton: View {
    @State private var isPressed: Bool = false
    @Binding var authMode: AuthMode
    var body: some View {
        Button {
            print("holi2")
        } label: {
            Text(authMode.rawValue)
                .font(.title3)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .foregroundStyle(Color.white)
                //.background(LinearGradient(colors: [Color.cBlue2, Color.cBlue3], startPoint: .bottom, endPoint: .top))
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

#Preview {
    @Previewable @State var authMode: AuthMode = .signIn
    SignIn_UpButton(authMode: $authMode)
}
