//
//  PersonsManager.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 04.08.2021.
//

import UIKit

struct Parent {
    var image = UIImage(systemName: "person.fill.viewfinder") ?? UIImage()
    var secondName = ""
    var firstName = ""
    var patronymicName = ""
    var age = ""
}

//final class PersonsManager {
//    let firstNames = ["Paul", "Denis", "Boris", "Nicola", "Bred", "Teo"].shuffled()
//    let lastNames = ["Cooper", "Jordan", "Gibson", "Lopez", "King", "Harrison"].shuffled()
//    let phones = ["122311123", "121393878", "098124988", "981273121", "091298319", "182398771"].shuffled()
//    let emails = ["neo82@mail.li", "movideo@goooow.net", "devi1818@ye.lo", "depomi_at@madul.net", "cevide@mut.ru", "dobro@ys.re"].shuffled()
//
//    var persons: [Parent] = []
//
//    func generatePersons() -> [Parent] {
//        for i in 0..<firstNames.count {
//            var person = Parent()
//            person.firstName = firstNames[i]
//            person.lastName = lastNames[i]
//            persons.append(person)
//        }
//        return persons
//    }
//}
