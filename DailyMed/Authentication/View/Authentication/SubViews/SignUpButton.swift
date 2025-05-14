//
//  SignUpButton.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 14/05/25.
//

import SwiftUI

struct SignUpButton: View {
    @State private var isPressed: Bool = false
    @Binding var isRedirectedToView: Bool
    var body: some View {
        Button {
            if isRedirectedToView {
                //SignUpAuthentication(isRedirectedToView: $isRedirectedToView)
                print("holi33")
            }
            else {
                print("holi2")
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
       
    }
    
}

#Preview {
    @Previewable @State var isRedirectedToView: Bool = false
    SignUpButton(isRedirectedToView: $isRedirectedToView)
}
