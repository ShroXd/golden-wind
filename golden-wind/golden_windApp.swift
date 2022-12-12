//
//  golden_windApp.swift
//  golden-wind
//
//  Created by Atriiy on 2022/12/12.
//

import SwiftUI

@main
struct golden_windApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
