//
//  CredentialsValidator.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 27/05/25.
//

import Foundation

protocol CredentialsValidating {
    func verifyValidEmail(email: String) throws -> Bool
    func verifyValidPassword(password: String) throws -> Bool
}

class CredentialsValidator: CredentialsValidating {
    func verifyValidEmail(email: String) throws -> Bool {
        guard email.isValidEmail else {
            throw SignUpError.invalidEmail
        }
        return true
    }
    
    func verifyValidPassword(password: String) throws -> Bool {
        guard password.isSecurityPasswordValid else  {
            throw SignUpError.invalidPassword
        }
        return true
    }
    
}
