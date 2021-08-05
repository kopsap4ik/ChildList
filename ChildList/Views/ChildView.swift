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
    
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.init(UIColor.white))
                .frame(width: UIScreen.main.bounds.width - 30, height: 70)
            
                VStack(alignment: .leading, spacing: 10){
                    TextField("Имя...", text: $child.name)
                    TextField("Возраст...", text: $child.age)
                        .keyboardType(.numberPad)
                }
                .font(.title3)
                .padding(.horizontal, 30.0)
                
        }
        .background(Color(UIColor.systemYellow)
                        .ignoresSafeArea()
        )

    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(child: Child())
    }
}
