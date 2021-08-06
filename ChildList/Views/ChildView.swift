//
//  ChildView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct ChildView: View {
    @Binding var child: Child
//    var child: Child
    var removeChild: () -> Void
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.init(UIColor.white))
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 70,
                       maxHeight: 70,
                       alignment: .center)
                .padding()
            
            HStack {
                VStack(alignment: .leading, spacing: 10){
                    TextField("Имя...", text: $child.name)
                    TextField("Возраст...", value: $child.age, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
//                    TextField("Возраст...", text: $child.age)
//                        .keyboardType(.numberPad)
                }
                .font(.title3)
                .padding(.horizontal, 30.0)
                
                Button(action: {
                    removeChild()
                }) {
                    Text("X")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .clipShape(Circle())
                }
                .padding(.trailing, 30)
            }
            
        }
//        .background(Color(UIColor.systemYellow).ignoresSafeArea())
        
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(child: .constant(Child()), removeChild: {})
    }
}
