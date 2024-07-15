//
//  TabItem.swift
//  NetflixTabBar
//
//  Created by Mihai Crisan on 15.07.2024.
//

import SwiftUI

struct TabItem: View {
    @State private var vibrationTrigger = 0
    @State private var isPressed = false
    @State private var scale = 1.0
    var body: some View {
        VStack(spacing: 2) {
            Image(systemName: "person.fill")
                .font(.title2)
                .scaleEffect(scale)

            Text(isPressed ? "pressed" : "not pressed")
                .font(.caption2)
                .textScale(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 10)
        .contentShape(.rect)
        .gesture(pressed)
        .sensoryFeedback(.impact(weight: .light, intensity: 0.6), trigger: vibrationTrigger)
    }
    
    var pressed: some Gesture {
        DragGesture(minimumDistance: 0.0)
            .onChanged { _ in
                withAnimation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0.1)) {
                        isPressed = true
                        scale = 0.6
                    }
            }
            .onEnded { _ in
                withAnimation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0.1)) {
                        isPressed = false
                        vibrationTrigger = 1 - vibrationTrigger
                        scale = 1.1
                    }
                    withAnimation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0.1).delay(0.1)) {
                        scale = 1.0
                    }
            }
    }
}

#Preview {
    ContentView()
}
