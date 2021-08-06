//
//  AddChildButtonView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct AddChildButtonView: View {
    var addChild: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                addChild()
            }) {
                Text("+")
                    .font(.system(size: 46, weight: .bold, design: .rounded))
                    .frame(width: 50, height: 50, alignment: .bottom)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .clipShape(Circle())
            }
        }
    }
}

struct AddChildButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddChildButtonView(addChild: {})
    }
}
