//
//  ContentView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
            TabView {
                Tab("Contacts", systemImage: "person.2") {
                    ContactsView(persons: persons)
                }
                
                Tab("Numbers", systemImage: "phone") {
                    NumbersView(persons: persons)
                }
            }
            .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
