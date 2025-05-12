//
//  StartView.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 12/05/25.
//

import SwiftUI

struct StartView: View {
    @State private var authMode: AuthMode = .signIn
    @State private var showAuth: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "pill")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .padding(.top, 20)
            
            VStack(spacing: 20) {
                Text("DailyMed")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(
                        LinearGradient(colors: [Color.cBlue1, Color.cBlue2, Color.cBlue3], startPoint: .bottomLeading, endPoint: .topTrailing)
                    )
                    
                Text("Organize your daily medication")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(Color.cGray1)
            }
            .padding(.top, 50)
            Spacer()
        }
        .overlay (
            ZStack(alignment: .bottom) {
                ShapeStartView()
                    .frame(width: 700, height: UIScreen.main.bounds.height * 0.6)
                    .shadow(color: .gray, radius: 5.0)
                    .foregroundStyle(
                        LinearGradient(colors: [Color.cBlue1, Color.cBlue2], startPoint: .bottom, endPoint: .top)
                    )
                    
                Button(action: {
                    showAuth = true
                }) {
                    Text("Start")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .padding(.all, 20)
                }
                .fullScreenCover(isPresented: $showAuth) {
                    AuthenticationView(authMode: $authMode)
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
