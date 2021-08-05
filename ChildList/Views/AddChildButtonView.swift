//
//  AddChildButtonView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct AddChildButtonView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Add child pressed")
            }) {
                Text("+")
                    .font(.system(size: 46, weight: .bold, design: .rounded))
                    .frame(width: 50, height: 50, alignment: .bottom)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .clipShape(Circle())
            }
            Spacer()
        }
    }
}

struct AddChildButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddChildButtonView()
    }
}
