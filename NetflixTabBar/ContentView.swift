//
//  ContentView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var activeTabDetails: TabDetails = .apps
    
    var body: some View {
        ZStack {
            // Background colour
//            Color(.thinMaterial)
//                .ignoresSafeArea()
            
            // Actual screen
            VStack(spacing: 0) {
                // Screen contents
                switch activeTabDetails {
                case .photos:
                    PhotosView()
                case .chat:
                    ChatView()
                case .apps:
                    AppsView()
                case .notifications:
                    NotificationsView()
                case .profile:
                    ProfileView()
                }

                TabBar(activeTabDetails: $activeTabDetails)
            }
        }
    }
}

#Preview {
    ContentView()
}
