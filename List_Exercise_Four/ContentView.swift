//
//  ContentView.swift
//  List_Exercise_Four
//
//  Created by AUNG KO LIN on 2024/06/10.
//

import SwiftUI
struct ContentView: View {
    @State private var isFaceID: Bool = false
    @State private var isNotificationOn: Bool = true
    @State private var locationService: Bool = true
    @State private var darkMode: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                // TODO: - change to use custom icons. you can download them from figma
                Section(header: Text("Account").font(.title2).bold()) {
                    NavigationLink(destination: Text("Notification Setting")) {
                        Label("Notification Setting", systemImage: "bell")
                    }
                    NavigationLink(destination: Text("Shipping Address")) {
                        Label("Shipping Address", systemImage: "cart")
                    }
                    NavigationLink(destination: Text("Payment Info")) {
                        Label("Payment Info", systemImage: "creditcard")
                    }
                    NavigationLink(destination: Text("Delete Account")) {
                        Label("Delete Account", systemImage: "trash")
                    }
                }
                .padding(.bottom,13)
                Section(header: Text("App Setting").font(.title2).bold()) {
                    Toggle(isOn: $isFaceID) {
                        Text("Use Face ID")
                    }
                    Toggle(isOn: $isNotificationOn) {
                        Text("Enable Push Notification")
                    }
                    Toggle(isOn: $locationService) {
                        Text("Enable Location Service")
                    }
                    Toggle(isOn: $darkMode) {
                        Text("Dark Mode")
                    }
                }
                .padding(.bottom,7)
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem() {
                    Text("Account & Account Setting")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.horizontal,30)
                    
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    // TODO: - add some leading padding to back circle button. check the figma desgin
                    Button(action: {
                        // Back button action
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.secondary)
                            )
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    // TODO: - Don't use system icon 'lock'. Please use the custom icon from figma. Download and import it to Assets folder
                    Button(action: {
                        // Lock button action
                    }) {
                        Image(systemName: "lock")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
