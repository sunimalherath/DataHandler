//
//  UserProfileStore.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

class UserProfileStore {
    var users: [User] = []
    
    init() {
        fetchUserProfiles()
    }
    
    func fetchUserProfiles() {
        users = [
            User(firstName: "John", lastName: "Doe", age: 26),
            User(firstName: "Jane", lastName: "Doe", age: 30),
            User(firstName: "John", lastName: "Anderton", age: 38),
            User(firstName: "John", lastName: "Loneguard", age: 25),
            User(firstName: "John", lastName: "Smith", age: 42),
            User(firstName: "Jane", lastName: "Smith", age: 40)
        ]
    }
}
