//
//  ParentView.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

struct ParentView: View {
    @State var parent: Parent
    @State private var showingImagePicker = false
    @State private var parentLogo: UIImage?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.init(UIColor.red))
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 200,
                       maxHeight: 200,
                       alignment: .center)
                .padding()
            
            
            HStack() {
                Image(uiImage: parent.image)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding()
                    .onTapGesture {
                        showingImagePicker = true
                    }
                
                VStack(alignment: .leading, spacing: 10){
                    TextField("Фамилия...", text: $parent.secondName)
                    TextField("Имя...", text: $parent.firstName)
                    TextField("Отчество...", text: $parent.patronymicName)
                    TextField("Возраст...", text: $parent.age)
                        .keyboardType(.numberPad)
                }
                .font(.title3)
            }
            .padding(.bottom, 10.0)
            .padding(.horizontal, 20.0)
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $parent.image)
            }
        }
        .padding(.top, 10)
    }
    
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView(parent: Parent())
    }
}
