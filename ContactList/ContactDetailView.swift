//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Alexandr Artemov (Mac Mini) on 21.08.2025.
//

import SwiftUI

struct ContactDetailView: View {
    var mock: Person!
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .frame(maxWidth: .infinity)
                
            Label(mock.phone, systemImage: "phone")
            Label(mock.email, systemImage: "tray")
        }
        .navigationTitle(mock.fullName)
        .listStyle(.insetGrouped)
    }
}

#Preview {
    ContactDetailView(mock: Person.getMock()[0])
}
