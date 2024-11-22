//
//  Stats.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import SwiftUI

struct Stats: View {
    @StateObject var data: Data
    
    var body: some View {
        StatsRow(label: "Total", value: data.users.count)
        StatsRow(label: "Male", value: data.users.filter{$0.gender == .male}.count)
        StatsRow(label: "Female", value: data.users.filter{$0.gender == .female}.count)
        StatsRow(label: "Adults", value: data.users.filter{$0.age >= 18}.count)
        StatsRow(label: "Children", value: data.users.filter{$0.age < 18}.count)
    }
}

struct StatsRow: View {
    let label: String
    let value: Int
    
    var body: some View {
        HStack {
            Text(label)
                .font(.headline)
            Spacer()
            Text("\(value)")
        }
    }
}

#Preview {
    Stats(data: Data())
}
