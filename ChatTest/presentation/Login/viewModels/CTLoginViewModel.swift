//
//  CTLoginViewModel.swift
//  ChatTest
//
//  Created by Juan Diego Garcia Serrano on 07/05/25.
//

import Foundation

import FirebaseFirestore

class CTLoginViewModel: ObservableObject {
    @Published internal var username: String = ""
    @Published internal var magic: String = ""
    @Published internal var userIsValid: Bool = false
    
    internal func callValidateUser(completionHandler: @escaping (Bool) -> Void) {
        Firestore.firestore().collection("users").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err.localizedDescription)")
                completionHandler(false)
            } else if let querySnapshot = querySnapshot {
                var userIsValid = false
                for document in querySnapshot.documents {
                    if document.data()["user"] as? String == self.username &&
                        document.data()["magic"] as? String == self.magic {
                        userIsValid = true
                        break
                    }
                }
                completionHandler(userIsValid)
            }
        }
    }
    
    internal func cleanFieldsLogin() -> Void {
        self.magic = ""
        self.username = ""
        self.userIsValid = false
    }
}
