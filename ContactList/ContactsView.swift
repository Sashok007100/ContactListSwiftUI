//
//  ContactsView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContactsView: View {
    var mock: [Person]!
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(mock) { contact in
                    NavigationLink(contact.fullName) {
                        ContactDetailView(mock: contact)
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactsView(mock: Person.getMock())
}
