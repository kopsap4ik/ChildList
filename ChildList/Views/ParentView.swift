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
        VStack {
            Section {
                
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
                .padding(.horizontal, -10.0)
            }
            .padding(.bottom, 10.0)
            .padding(.horizontal, 20.0)
            
            
            
            Form {
//                HStack() {
//                    Image(systemName: "person.crop.circle")
//                        .resizable()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.orange)
//                    
//                    //                    VStack(alignment: .leading){
//                    //
//                    //                        HStack {
//                    VStack(alignment: .leading, spacing: 10){
//                        Text("Фамилия")
//                        Text("Имя")
//                        Text("Отчество")
//                        Text("Возраст")
//                    }
//                    .foregroundColor(.gray)
//                    
//                    VStack(alignment: .leading, spacing: 10){
//                        TextField("Введите фамилию...", text: $parent.secondName)
//                        TextField("Введите имя...", text: $parent.firstName)
//                        TextField("Введите отчество...", text: $parent.patronymicName)
//                        TextField("Введите возраст...", text: $parent.age)
//                    }
//                    
//                    //                        }
//                    
//                    //                    }
//                    //                    .font(.title3)
//                }
//                .padding(.horizontal, -10.0)
                
                // childrens
                Section {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.orange)
                }
                
            }
            
            
            
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $parent.image)
        }
    }
    
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView(parent: Parent())
    }
}
