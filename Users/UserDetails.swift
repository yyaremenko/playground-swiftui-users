//
//  UserDetails.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import SwiftUI

struct UserDetails: View {
    @Binding var user: User
    
    var body: some View {
        Form {
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
            TextField("Age", value: $user.age, format: .number)
            Picker("Gender", selection: $user.gender) {
                Text("Male").tag(Gender.male)
                Text("Female").tag(Gender.female)
            }.pickerStyle(.palette)
        }
    }
}

#Preview {
    @State var user: User = User(firstName: "Joe", lastName: "Bloggs", age: 30, gender: .male)
    
    UserDetails(user: $user)
}
