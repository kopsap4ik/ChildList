//
//  TestView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

struct TestView: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]
    @State private var title = "false"
    
    var body: some View {
        
        NavigationView {
            Form {
                VStack(alignment: .leading) {
                    Text("Testing a title").font(.headline)
                    Text("Testing a subheadline").font(.subheadline)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .listRowInsets(EdgeInsets())
                .background(Color(UIColor.systemGroupedBackground))
                        
                Section(header: Text("Title and Category").bold()) {
                   TextField("Title", text: $title)
                   TextField("Category", text: $title)
                }
            }
            .navigationTitle("Test Form")
        }
        
//        VStack {
//            Form {
//                Section(footer: Text("Note: Enabling logging may slow down the app")) {
//                    Picker("Select a color", selection: $selectedColor) {
//                        ForEach(colors, id: \.self) {
//                            Text($0)
//                        }
//                    }
//                    .pickerStyle(SegmentedPickerStyle())
//
//                    Toggle("Enable Logging", isOn: $enableLogging)
//                }
//
//                Section {
//                    Button("Save changes") {
//                        // activate theme!
//                    }
//                }
//            }
//            if /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/ {
//                Button("Save changes") {
//                    // activate theme!
//                }
//            } else {
//                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
//            }
//        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
