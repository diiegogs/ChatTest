//
//  CTLoginProtocol.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import Foundation

protocol CTLoginProtocol {
    func validateUser(id: UUID, magic: String, user: String) -> Void
    func saveUser(id: UUID, magic: String, user: String, photo: String) -> CTLoginUserModel
}

class CTLoginValidateUser {
    private let validateUser: CTLoginProtocol
    
    init(validateUser: CTLoginProtocol) {
        self.validateUser = validateUser
    }
    
    func callValidateUser(_ id: UUID, _ magic: String, _ user: String) -> Void {
        validateUser.validateUser(id: id, magic: magic, user: user)
    }
}

class CTLoginSaveUser {
    private let validateUser: CTLoginProtocol
    
    init(validateUser: CTLoginProtocol) {
        self.validateUser = validateUser
    }
    
    func callSaveUser(_ id: UUID, _ magic: String, _ user: String, _ photo: String) -> CTLoginUserModel {
        return validateUser.saveUser(id: id, magic: magic, user: user, photo: photo)
    }
}
