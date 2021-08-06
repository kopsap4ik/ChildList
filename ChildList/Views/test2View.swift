//
//  test2View.swift
//  ChildList
//
//  Created by Василий Петухов on 06.08.2021.
//

import SwiftUI

@dynamicMemberLookup
struct Indexed<Element, Index>
{
  var index: Index
  var offset: Int
  var element: Element

  //Access to constant members
  subscript<T>(dynamicMember keyPath: KeyPath<Element, T>) -> T
  {
    element[keyPath: keyPath]
  }

  //Access to mutable members
  subscript<T>(dynamicMember keyPath: WritableKeyPath<Element, T>) -> T
  {
    get { element[keyPath: keyPath] }
    set { element[keyPath: keyPath] = newValue }
  }
}

extension Indexed: Identifiable where Element: Identifiable
{
  var id: Element.ID { element.id }
}

extension RandomAccessCollection
{
  func indexed() -> AnyRandomAccessCollection<Indexed<Element, Index>>
  {
    AnyRandomAccessCollection(
      zip(zip(indices, 0...).lazy, self).lazy
        .map { Indexed(index: $0.0.0, offset: $0.0.1, element: $0.1) }
    )
  }
}




struct Animal: Identifiable {
    var id = UUID()
    var name: String
    var haveSeen: Bool = false
}

struct test2View: View {
    @State var animals: [Animal] = [
      Animal(name: "Tiger"),
      Animal(name: "Lion"),
      Animal(name: "Emu"),
      Animal(name: "Giraffe"),
      Animal(name: "Elephant"),
      Animal(name: "Panda"),
    ]
    
    var body: some View {
      List {
        ForEach(animals.indexed()) { indexedAnimal in
          Toggle(isOn: self.$animals[indexedAnimal.index].haveSeen) {
            Text("\(indexedAnimal.offset + 1) - \(indexedAnimal.name)")
          }
        }
        .onDelete(perform: { indexSet in
            animals.remove(atOffsets: indexSet)
        })
      }
    }
}

struct test2View_Previews: PreviewProvider {
    static var previews: some View {
        test2View()
    }
}
