//
//  ContentView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var activeTabDetails: TabDetails = .apps
//    @State private var allTabs: [Tab] = TabDetails.allCases.compactMap { tab ->}
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            
            VStack {
                Text("que pasa")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                TabBar()
            }
        }
    }
}

#Preview {
    ContentView()
}
