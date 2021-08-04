//
//  ChildListApp.swift
//  ChildList
//
//  Created by Василий Петухов on 04.08.2021.
//

import SwiftUI

@main
struct ChildListApp: App {
    var body: some Scene {
        WindowGroup {
            ParentView(parent: Parent())
        }
    }
}
