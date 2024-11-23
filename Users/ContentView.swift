//
//  ContentView.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        NavigationStack {
            List {
                Section("Stats") {
                    Stats(data: data)
                }
                Section("Users") {
                    ForEach($data.users) { $user in
                        NavigationLink {
                            UserDetails(user: $user)
                                .navigationTitle("Edit user")
                        } label: {
                            UserRow(user: user)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView().environmentObject(Data())
}
