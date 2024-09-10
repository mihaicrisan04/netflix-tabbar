//
//  TabBar.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import SwiftUI

struct TabBar: View {
    @State private var activeTab = false
    @Binding var activeTabDetails: TabDetails
    
    var body: some View {
        HStack {
            TabItem(tabDetails: .apps, activeTabDetails: $activeTabDetails)
            TabItem(tabDetails: .photos, activeTabDetails: $activeTabDetails)
            TabItem(tabDetails: .chat, activeTabDetails: $activeTabDetails)
            TabItem(tabDetails: .notifications, activeTabDetails: $activeTabDetails)
            TabItem(tabDetails: .profile, activeTabDetails: $activeTabDetails)
        }
        .frame(maxWidth: .infinity, maxHeight: 49)
//        .overlay(
//            Rectangle()
//                .frame(height: 1 / UIScreen.main.scale) // 1 pixel height
//                .foregroundColor(.gray),
//            alignment: .top
//        )
        .background(.ultraThinMaterial)
    }
}

#Preview {
    ContentView()
}
