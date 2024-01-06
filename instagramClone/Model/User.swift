//
//  User.swift
//  instagramClone
//
//  Created by Developer on 1/2/24.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
    
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "dark knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "superman", profileImageUrl: nil, fullname: "Clark Kent", bio: "No to krypto", email: "superman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "kevmer", profileImageUrl: nil, fullname: "Kevin Merwin", bio: "yolo", email: "primemerwinian@gmail.com"),
        .init(id: NSUUID().uuidString, username: "heisenberg", profileImageUrl: nil, fullname: "Walter White", bio: "Heisenberg", email: "walterwhite@gmail.com"),
    ]
    
    
}
