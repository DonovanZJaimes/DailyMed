//
//  StartView.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 12/05/25.
//

import SwiftUI

struct StartView: View {
    @State private var showSignInAuth: Bool = false
    
    var body: some View {
        VStack {
            Image("Pill")
                .resizable()
                
                .scaledToFit()
                .frame(width: 100)
            
            VStack(spacing: 20) {
                Text("DailyMed")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(
                        LinearGradient(colors: [Color.cGray1, Color.cBlue1], startPoint: .bottomLeading, endPoint: .topTrailing)
                    )
                    
                Text("Organize your daily medication")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(Color.cGray1)
            }
            .padding(.top, 20)
            Spacer()
        }
        .overlay (
            ZStack(alignment: .bottom) {
                ShapeStartView()
                    .frame(width: 700, height: UIScreen.main.bounds.height * 0.6)
                    .shadow(color: .gray, radius: 5.0)
                    .foregroundStyle(
                        LinearGradient(colors: [Color.cGray1, Color.cBlue1], startPoint: .bottom, endPoint: .top)
                    )
                    
                Button(action: {
                    showSignInAuth = true
                }) {
                    Text("Start")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .padding(.all, 20)
                }
                .fullScreenCover(isPresented: $showSignInAuth) {
                    SignInAuthentication()
                }
            },
            alignment: .bottom
        )
        .ignoresSafeArea(edges: .bottom)
    }
}



#Preview {
    StartView()
}
