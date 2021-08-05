//
//  DataManager.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

//final class DataManager {
//    static let shared = DataManager()
//
//    @AppStorage ("Parent") private var userData = Data()
//
//    private init (){}
//
//    func saveParent(parent: Parent) {
//        guard let userData = try? JSONEncoder().encode(parent) else { return }
//        self.userData = userData
//    }
//
//    func loadUser() -> User {
//        guard let user = try? JSONDecoder().decode(User.self, from: userData) else { return User() }
//        return user
//    }
//    
//    func deleteUser(userManager: UserManager) {
//        userManager.user.name = ""
//        userManager.user.isRegistered = false
//        UserDefaults.standard.removeObject(forKey: "User")
//    }
//
//}
