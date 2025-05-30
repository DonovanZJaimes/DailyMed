//
//  AuthenticationViewModel.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 27/05/25.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var errorEmail: String = ""
    @Published var password: String = ""
    @Published var errorPassword: String = ""
    
    private let validator: CredentialsValidating
    
    init(validator: CredentialsValidating = CredentialsValidator()){
        self.validator = validator
    }
    
    func verifyCredentials(withEmail email: String, andPassword password: String) -> Bool {
        var isEmailValid: Bool = false
        var isPasswordValid: Bool = false
        do {
            isEmailValid = try validator.verifyValidEmail(email: email)
            errorEmail = ""
        }catch {
            errorEmail = error.localizedDescription
        }
        
        do {
            isPasswordValid = try validator.verifyValidPassword(password: password)
            errorPassword = ""
        } catch {
            errorPassword = error.localizedDescription
        }
        
        
        return isPasswordValid && isEmailValid
    }
    
    func cleanCredentials() {
        email = ""
        password = ""
        errorEmail = ""
        errorPassword = ""
    }
    
    
    
}
