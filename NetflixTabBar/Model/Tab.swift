//
//  Tab.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import Foundation

enum TabDetails: String, CaseIterable {
    case photos = "photo.stack"
    case chat = "bubble.left.and.text.bubble.right"
    case apps = "square.3.layers.3d"
    case notifications = "bell.and.waves.left.and.right"
    case profile = "person.2.crop.square.stack.fill"
    
    var title: String {
        switch self {
        case .photos: return "Photos"
        case .chat: return "Chat"
        case .apps: return "Apps"
        case .notifications: return "Notifications"
        case .profile: return "Profile"
        }
    }
    
    var imageName: String {
        switch self {
        case .photos: return "photo.stack"
        case .chat: return "bubble.left.and.text.bubble.right"
        case .apps: return "square.3.layers.3d"
        case .notifications: return "bell.and.waves.left.and.right"
        case .profile: return "person.2.crop.square.stack.fill"
        }
    }
}

struct Tab: Identifiable {
    let id = UUID()
    var tabDetails: TabDetails
}
