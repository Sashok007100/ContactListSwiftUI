//
//  ContentView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
            TabView {
                Tab("Contacts", systemImage: "person.2") {
                    ContactsView(contacts: contacts)
                }
                
                Tab("Numbers", systemImage: "phone") {
                    NumbersView(contacts: contacts)
                }
            }
            .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
