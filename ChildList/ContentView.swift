//
//  ContentView.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    private var childManager = ChildManager()
    @State private var countChilds = 0
    
    var body: some View {
            VStack {
                

                    ParentView(parent: Parent())
                
//                VStack() {
//                if childManager.countChild < 5 { AddChildButtonView()} else { }
                if countChilds < 5 {
                    AddChildButtonView(countChildren: $countChilds)
                } else { }
                
                Button(action: {
                    countChilds -= 1
                    childManager.countChild += 1
                    print(childManager.countChild)
                }, label: {
                    Text("\(countChilds)")
                })
                .padding(.top, 20)
                
                
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
