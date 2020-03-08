//
//  UserProfileStore.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

class UserProfileStore : ObservableObject {
    var objectWillChange = ObjectWillChangePublisher()
    var users: [User] = [] {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        fetchUserProfiles()
    }
    
    func fetchUserProfiles() {
        users = [
            User(firstName: "John", lastName: "Doe"),
            User(firstName: "Jane", lastName: "Doe"),
            User(firstName: "John", lastName: "Anderton"),
            User(firstName: "John", lastName: "Loneguard"),
            User(firstName: "John", lastName: "Smith"),
            User(firstName: "Jane", lastName: "Smith")
        ]
    }
}
