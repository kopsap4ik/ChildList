//
//  NameTextField.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct NameTextField: View {
    @State var username: String = ""
    
    var body: some View {
        HStack(alignment: .center) {
            Text("Name:")
//                .font(.callout)
//                .bold()
            TextField("Enter username...", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct NameTextField_Previews: PreviewProvider {
    static var previews: some View {
        NameTextField()
    }
}
