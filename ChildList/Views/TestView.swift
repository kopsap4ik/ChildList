//
//  TestView.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import SwiftUI

//class ElementHolder: ObservableObject {
//
//    @Published var elements: [String]
//
//    init(elements: [String]) {
//        self.elements = elements
//    }
//}

struct TestPerson: Identifiable {
    var id = UUID()
    var name: String
}

struct TestView: View {
    //    @State var elements: [TestPerson] = [
    //        TestPerson(name: "ooooo"),
    //        TestPerson(name: "aaaaa"),
    //        TestPerson(name: "ggggg")
    //    ]
    
    @State var elements: [String] = [
        "ooooo",
        "aaaaa",
        "ggggg"
    ]
    
    var body: some View {
                
        VStack {
            
            
            ForEach(elements.indices, id:\.self ){ index in
                SecondView(element: Binding(
                    get: { return elements[index] },
                    set: { (newValue) in return self.elements[index] = newValue}
                  ),
                onDelete: { elements.remove(at: index)}
                )
            }

            
        }
    }
    
    func delete(offset: Int) {
        DispatchQueue.main.async {
            self.elements.remove(at: offset)
        }
    }
}

struct SecondView: View {
    @Binding var element: String
    var onDelete: () -> ()
    
    var body: some View {
        HStack {
            //            if index < elements.count{
            //            Text(element)
            TextField("", text: $element)
            Button(action: { onDelete() }) {
                Text("delete")
            }
            //            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

//extension Binding where Value: MutableCollection
//{
//  subscript(safe index: Value.Index) -> Binding<Value.Element>
//  {
//    // Get the value of the element when we first create the binding
//    // Thus we have a 'placeholder-value' if `get` is called when the index no longer exists
//    let safety = wrappedValue[index]
//    return Binding<Value.Element>(
//      get: {
//        guard self.wrappedValue.indices.contains(index)
//          else { return safety } //If this index no longer exists, return a dummy value
//        return self.wrappedValue[index]
//    },
//      set: { newValue in
//        guard self.wrappedValue.indices.contains(index)
//          else { return } //If this index no longer exists, do nothing
//        self.wrappedValue[index] = newValue
//    })
//  }
//}
