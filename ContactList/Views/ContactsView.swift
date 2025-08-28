//
//  ContactsView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(person.fullName) {
                    ContactDetailView(person: person)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactsView(contacts: Person.getContactList())
}
