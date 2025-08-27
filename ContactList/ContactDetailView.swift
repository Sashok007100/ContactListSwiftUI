//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContactDetailView: View {
    var person: Person!
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
        .listStyle(.insetGrouped)
    }
}

#Preview {
    ContactDetailView(person: Person.getPersons()[0])
}
