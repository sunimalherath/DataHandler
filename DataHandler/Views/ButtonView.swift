//
//  ButtonView.swift
//  DataHandler
//
//  Created by Sunimal Herath on 8/3/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                // Add user action
            }, label: {
                Text("Add User")
            })
            Spacer()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
