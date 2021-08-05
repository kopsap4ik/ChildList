//
//  ChildView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct ChildView: View {
    @State var child: Child
//    @State var childs: [Child]
    var removeChildren: RemoveChildButtonView
    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.init(UIColor.white))
                .frame(width: UIScreen.main.bounds.width - 30, height: 70)
            
            HStack {
                VStack(alignment: .leading, spacing: 10){
                        TextField("Имя...", text: $child.name)
                        TextField("Возраст...", text: $child.age)
                            .keyboardType(.numberPad)
                    }
                    .font(.title3)
                .padding(.horizontal, 30.0)
                
                removeChildren
                    .padding(.trailing, 30)
                
//                Button(action: {
//                    print("Remove child pressed")
//                }) {
//                    Text("X")
//                        .font(.system(size: 30, weight: .bold, design: .rounded))
//                        .frame(width: 30, height: 30, alignment: .center)
//                        .foregroundColor(Color.white)
//                        .background(Color.red)
//                        .clipShape(Circle())
//                }
//                .padding(.trailing, 30)
            }
                
        }
//        .background(Color(UIColor.systemYellow).ignoresSafeArea())

    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(child: Child(),
                  removeChildren: RemoveChildButtonView(countChildren: .constant(0)))
    }
}
