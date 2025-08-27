//
//  ContactsView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContactsView: View {
    var persons: [Person]!
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(person.fullName) {
                    ContactDetailView(person: person)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getPersons())
}
