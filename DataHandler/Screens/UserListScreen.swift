//
//  UserListScreen.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct UserListScreen: View {
    @ObservedObject var userProfileStore = StoreManager.instance.userProfileStore
    var body: some View {
        VStack(alignment: .leading){
            Text("User List")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, 10.0)
            List(userProfileStore.users) { user in
                UserListRow(user: user)
            }
        }
        
        
    }
}

struct UserListScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserListScreen()
    }
}
