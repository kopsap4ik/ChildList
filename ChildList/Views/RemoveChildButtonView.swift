//
//  RemoveChildButtonView.swift
//  ChildList
//
//  Created by Василий Петухов on 06.08.2021.
//

import SwiftUI

struct RemoveChildButtonView: View {
    @Binding var countChildren: Int
    
    var body: some View {
        Button(action: {
            countChildren -= 1
        }) {
            Text("X")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(Color.white)
                .background(Color.red)
                .clipShape(Circle())
        }
    }
}

struct RemoveChildButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveChildButtonView(countChildren: .constant(0))
    }
}
