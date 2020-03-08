//
//  UserListRow.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct UserListRow: View {
    var user: User
    var body: some View {
        HStack{
            Text(user.firstName)
            Text(" ")
            Text(user.lastName)
        }
    }
}

struct UserListRow_Previews: PreviewProvider {
    static var previews: some View {
        UserListRow(user: User(firstName: "John", lastName: "Rambo"))
    }
}
