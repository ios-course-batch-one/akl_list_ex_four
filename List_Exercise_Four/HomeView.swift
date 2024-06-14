//
//  HomeView.swift
//  List_Exercise_Four
//
//  Created by AUNG KO LIN on 2024/06/10.
//
import SwiftUI

struct HomeView: View {
    @State private var enableFaceID = false
    @State private var enablePushNotifications = true
    @State private var enableLocationServices = true
    @State private var darkMode = false

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Account")) {
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

                Section(header: Text("App Settings")) {
                    Toggle(isOn: $enableFaceID) {
                        Text("Enable Face ID For Log In")
                    }
                    Toggle(isOn: $enablePushNotifications) {
                        Text("Enable Push Notifications")
                    }
                    Toggle(isOn: $enableLocationServices) {
                        Text("Enable Location Services")
                    }
                    Toggle(isOn: $darkMode) {
                        Text("Dark Mode")
                    }
                }
            }
            .navigationTitle("Account & Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // action for back button
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .frame(width: 40,height: 40))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // action for lock button
                    }) {
                        Image(systemName: "lock")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
