//
//  ProfileScreen.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ProfileScreen: View {
    @State private var nextUser: User = User()
    var body: some View {
        Form {
            TextField("First name", text: $nextUser.firstName)
            TextField("Last name", text: $nextUser.lastName)
            ButtonView()                
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
