//
//  SignUpError.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 19/05/25.
//

import Foundation


enum SignUpError: String, Error, CaseIterable {
    case invalidPassword
    case invalidEmail
}

extension SignUpError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return NSLocalizedString("The password must have at least one lowercase letter, one uppercase letter, one number, one special character, and more than 6 characeres", comment: "")
        case .invalidEmail:
            return NSLocalizedString("The email address is invalid", comment: "")
        }
    }
}
