//
//  ContentView.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State var childs: [Child] = []
    
    var body: some View {
        VStack {
            ParentView(parent: Parent())
            
            if childs.count < 5 {
                AddChildButtonView(addChild: {
                    childs.append(Child())
                    print(childs)
                })
            }

            ForEach(childs.indices, id: \.self) { index in
                ChildView(child: Binding(
                    get: { return childs[index] },
                    set: { (newValue) in return childs[index] = newValue}
                ),
                          removeChild: { childs.remove(at: index)}
                )
            }

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
