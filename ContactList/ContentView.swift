//
//  ContentView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContentView: View {
    private let mock = Person.getMock()
    
    var body: some View {
            TabView {
                Tab("Contacts", systemImage: "person.2") {
                    ContactsView(mock: mock)
                }
                
                Tab("Numbers", systemImage: "phone") {
                    NumbersView(mock: mock)
                }
            }
            .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
