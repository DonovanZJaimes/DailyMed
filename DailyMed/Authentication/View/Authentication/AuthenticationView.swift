//
//  AuthenticationView.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 12/05/25.
//

import SwiftUI

struct AuthenticationView: View {
    @Binding var authMode: AuthMode
    var body: some View {
        Text(authMode.rawValue)
    }
}

#Preview {
    @Previewable @State var mode: AuthMode = .signIn
    AuthenticationView(authMode: $mode)
}
