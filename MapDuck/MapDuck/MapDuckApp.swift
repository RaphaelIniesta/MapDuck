//
//  MapDuckApp.swift
//  MapDuck
//
//  Created by Raphael Iniesta Reis on 18/02/24.
//

import SwiftUI
import SwiftData

@main
struct MapDuckApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataManager.self)
    }
}
