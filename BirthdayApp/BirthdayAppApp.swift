//
//  BirthdayAppApp.swift
//  BirthdayApp
//
//  Created by Yueqing Cai on 7/25/25.
//

import SwiftUI
import SwiftData

@main
struct BirthdayAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
