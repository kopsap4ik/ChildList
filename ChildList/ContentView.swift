//
//  ContentView.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                

                    ParentView(parent: Parent())
                
//                VStack() {
                    AddChildButtonView()
//                }
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//                .listRowInsets(EdgeInsets())
//                .background(Color(UIColor.systemGroupedBackground))
                
                    if true { ChildView(child: Child(name: "asasd", age: "20"))} else { }
                
                    Spacer()
            }
            .background(Color(UIColor.systemYellow)
                            .ignoresSafeArea()
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
