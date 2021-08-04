//
//  ContentView.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
        
        var body: some View {
            
//            VStack(alignment: .leading) {
//                NameTextField(username: "name")
//            }.padding()
            
            VStack(alignment: .trailing, spacing: 20) {
//                        HStack {
//                            Spacer()
                            EditButton()
//                        }
                
            ParentView(parent: Parent(name: "asdsad as dasd", age: "40"))
            }
            .padding()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
