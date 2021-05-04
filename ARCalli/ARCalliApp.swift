//
//  ARCalliApp.swift
//  ARCalli
//
//  Created by Bill Haku on 2021/5/4.
//

import SwiftUI

@main
struct ARCalliApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
