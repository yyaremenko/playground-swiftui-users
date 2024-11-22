//
//  UsersApp.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import SwiftUI

@main
struct UsersApp: App {
    @StateObject var data: Data = Data()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(data)
    }
}
