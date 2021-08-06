//
//  ChildView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct ChildView: View {
    @Binding var child: Child
    var removeChild: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.init(UIColor.white))
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 80,
                       maxHeight: 80,
                       alignment: .center)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
            
            HStack {
                VStack(alignment: .leading, spacing: 10){
                    TextField("Имя...", text: $child.name)
                    TextField("Возраст...", value: $child.age, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
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
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(child: .constant(Child()), removeChild: {})
    }
}
