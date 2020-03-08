//
//  ProfileScreen.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ProfileScreen: View {
    @ObservedObject var userProfileStore = StoreManager.instance.userProfileStore
    @State private var nextUser: User = User()
    @State var message: String = ""
    var body: some View {
        Form {
            TextField("First name", text: $nextUser.firstName)
                .onTapGesture {
                    self.message = ""
            }
            TextField("Last name", text: $nextUser.lastName)
                .onTapGesture {
                    self.message = ""
            }
            HStack{
                Spacer()
                Button(action: {
                    // Add user action without validating the entry
                    self.userProfileStore.users.append(self.nextUser)
                    self.message = "User added!"
                    self.nextUser = User()
                }, label: {
                    Text("Add User")
                })
                Spacer()
            }
            Text(message)
                .multilineTextAlignment(.center)
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
