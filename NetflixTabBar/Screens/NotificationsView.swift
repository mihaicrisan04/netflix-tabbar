//
//  NotificationsView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 16.07.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(0..<100) { index in
                    Text("item \(index)")
                }
            }
            .navigationTitle("Notifications")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.darkGray))
        }
    }
}

#Preview {
    ContentView()
}
