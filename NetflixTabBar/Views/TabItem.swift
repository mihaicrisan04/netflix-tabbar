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
    
    @State var tabDetails: TabDetails
    @Binding var activeTabDetails: TabDetails
    
    
    var body: some View {
        VStack(spacing: 2) {
            Image(systemName: tabDetails.imageName)
                .font(.title2)
                .scaleEffect(scale)

            Text(tabDetails.title)
                .font(.caption2)
                .textScale(.secondary)
        }
        .frame(maxWidth: .infinity)
        .foregroundStyle(activeTabDetails == tabDetails ? Color.primary : Color.gray.opacity(0.8))
        .padding(.top, 10)
        .contentShape(.rect)
        .gesture(pressed)
        .sensoryFeedback(.impact(weight: .light, intensity: 0.6), trigger: vibrationTrigger)
    }
    
    var pressed: some Gesture {
        DragGesture(minimumDistance: 0.0)
            .onChanged { _ in
                if activeTabDetails != tabDetails {
                    activeTabDetails = tabDetails
                }
                else {
                    // no redrawing of the current screen on multiple presses
                    /// ...
                }
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
