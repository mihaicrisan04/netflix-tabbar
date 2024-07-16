//
//  ProfileView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 16.07.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
           Text("Profile")
                .navigationTitle("Profile")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ProfileView()
}
