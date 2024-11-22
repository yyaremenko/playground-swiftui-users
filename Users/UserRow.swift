//
//  UserRow.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import SwiftUI

struct UserRow: View {
    @State var user: User
    
    var body: some View {
        HStack {
            Text("\(user.firstName) \(user.lastName), \(user.age)")
            Spacer()
            Text("\(user.gender)")
        }
    }
}

#Preview {
    UserRow(user: User(firstName: "Joe", lastName: "Smith", age: 30, gender: .male))
}
