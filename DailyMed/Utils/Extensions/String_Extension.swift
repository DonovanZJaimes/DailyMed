//
//  String_Extension.swift
//  DailyMed
//
//  Created by Donovan Z. Jaimes on 19/05/25.
//

import Foundation
extension String {
    var isSecurityPasswordValid: Bool {
        guard self.rangeOfCharacter(from: .uppercaseLetters) != nil &&
                self.rangeOfCharacter(from: .lowercaseLetters) != nil &&
                self.rangeOfCharacter(from: .punctuationCharacters) != nil &&
                self.rangeOfCharacter(from: .decimalDigits) != nil &&
                self.count >= 6
        else {
            return false
        }
        return true
    }
    
   
    
    var isValidEmail: Bool {
        let firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        let serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        let emailRegex = firstpart + "@" + serverpart + "[A-Za-z]{2,6}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
    

}
