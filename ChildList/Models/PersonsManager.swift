//
//  PersonsManager.swift
//  ChildList
//
//  Created by Василий Петухов on 05.08.2021.
//

import Foundation

struct Person: Hashable {
    var firstName = ""
    var lastName = ""
    var age = ""
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

final class PersonsManager {
    let firstNames = ["Paul", "Denis", "Boris", "Nicola", "Bred", "Teo"].shuffled()
    let lastNames = ["Cooper", "Jordan", "Gibson", "Lopez", "King", "Harrison"].shuffled()
    let phones = ["122311123", "121393878", "098124988", "981273121", "091298319", "182398771"].shuffled()
    let emails = ["neo82@mail.li", "movideo@goooow.net", "devi1818@ye.lo", "depomi_at@madul.net", "cevide@mut.ru", "dobro@ys.re"].shuffled()
    
    var persons: [Person] = []
    
    func generatePersons() -> [Person] {
        for i in 0..<firstNames.count {
            var person = Person()
            person.firstName = firstNames[i]
            person.lastName = lastNames[i]
//            person.phone = phones[i]
//            person.email = emails[i]
            persons.append(person)
        }
        return persons
    }
}
