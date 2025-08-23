//
//  NumbersView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct NumbersView: View {
    var mock: [Person]!
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(mock) { mock in
                    Section(mock.fullName) {
                        Label(mock.phone, systemImage: "phone")
                        Label(mock.email, systemImage: "tray")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView(mock: Person.getMock())
}
