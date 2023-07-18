//
//  TrafficLight2App.swift
//  TrafficLight2
//
//  Created by Марина Иванова on 18.07.2023.
//

import SwiftUI

@main
struct TrafficLight2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
