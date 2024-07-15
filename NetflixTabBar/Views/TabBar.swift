//
//  TabBar.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import SwiftUI

struct TabBar: View {
    @State private var activeTab = false
    
    var body: some View {
        HStack {
            TabItem()
            TabItem()
            TabItem()
            TabItem()
        }
        .overlay(
            Rectangle()
                .frame(height: 1 / UIScreen.main.scale) // 1 pixel height
                .foregroundColor(.gray),
            alignment: .top
        )
    }
}

#Preview {
    ContentView()
}
