//
//  ChatView.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 16.07.2024.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationStack {
           Text("Chat View")
                .navigationTitle("Chat")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ChatView()
}
