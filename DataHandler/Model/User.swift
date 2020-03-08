//
//  User.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

struct User : Identifiable {
    var id = UUID()
    var firstName: String = ""
    var lastName: String = ""
    var age: Int = 0
}
