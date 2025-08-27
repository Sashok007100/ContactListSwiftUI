//
//  NumbersView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct NumbersView: View {
    var persons: [Person]!
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView(persons: Person.getPersons())
}
