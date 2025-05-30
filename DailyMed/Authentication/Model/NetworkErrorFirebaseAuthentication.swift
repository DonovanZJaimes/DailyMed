//
//  NetworkErrorFirebaseAuthentication.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 19/05/25.
//

import Foundation

enum NetworkErrorFirebaseAuthentication: String, Error, CaseIterable {
    case ErrorEmailAlredyInUse // 17007
    case ErrorWeakPassword // 17026
    case ErrorMissingEmail // 17034
    case ErrorInvalidEmail // 17008
    case ErrorInvalidPassword // 17004
    case ErrorWrongPassword // 17009
    case ErrorGeneric //
}

/**
 extension NetworkErrorFirebase: LocalizedError {
     public var errorDescription: String? {
         switch self {
         case .ErrorEmailAlredyInUse:
             return NSLocalizedString("The email address is already in use by another account", comment: "")
         case .ErrorWeakPassword:
             return NSLocalizedString("The password must be 6 characters long or more", comment: "")
         case .ErrorMissingEmail:
             return NSLocalizedString("An email address must be provided", comment: "")
         case .ErrorInvalidEmail:
             return NSLocalizedString("The email address is badly formatted", comment: "")
         case .ErrorInvalidPassword:
             return NSLocalizedString("The password is invalid or the user does not have a password", comment: "")
         case .ErrorWrongPassword:
             return NSLocalizedString("The password is invalid or the user does not have a password", comment: "")
         case .ErrorGeneric:
             return NSLocalizedString("Authentication failed. Try again late", comment: "")
         }
     }
     
     public var errorCode: String {
         switch self {
         case .ErrorEmailAlredyInUse:
             return "17007"
         case .ErrorWeakPassword:
             return "17026"
         case .ErrorMissingEmail:
             return "17034"
         case .ErrorInvalidEmail:
             return "17008"
         case .ErrorInvalidPassword:
             return "17004"
         case .ErrorWrongPassword:
             return "17009"
         case .ErrorGeneric:
             return "170"
         }
     }
 }

 extension NetworkErrorFirebase  {
     func analyzeError(_ error: String) -> String {
         var errorMessage: String = ""
         switch error {
         case _ where error.contains(NetworkErrorFirebase.ErrorEmailAlredyInUse.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorEmailAlredyInUse.errorDescription!
         case _ where error.contains(NetworkErrorFirebase.ErrorWeakPassword.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorWeakPassword.errorDescription!
         case _ where error.contains(NetworkErrorFirebase.ErrorMissingEmail.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorMissingEmail.errorDescription!
         case _ where error.contains(NetworkErrorFirebase.ErrorInvalidEmail.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorInvalidEmail.errorDescription!
         case _ where error.contains(NetworkErrorFirebase.ErrorInvalidPassword.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorInvalidPassword.errorDescription!
         case _ where error.contains(NetworkErrorFirebase.ErrorWrongPassword.errorCode):
             errorMessage = NetworkErrorFirebase.ErrorWrongPassword.errorDescription!
         default:
             errorMessage = NetworkErrorFirebase.ErrorGeneric.errorDescription!
         }
         return errorMessage
     }
 }
*/
