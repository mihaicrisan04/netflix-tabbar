//
//  AppsView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 16.07.2024.
//

import SwiftUI

struct AppsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Apps View")
            }
            .navigationTitle("Apps")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    AppsView()
}
