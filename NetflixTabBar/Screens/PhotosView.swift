//
//  PhotosView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 16.07.2024.
//

import SwiftUI

struct PhotosView: View {
    var body: some View {
        NavigationStack {
           Text("Photos View")
                .navigationTitle("Photos")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PhotosView()
}
