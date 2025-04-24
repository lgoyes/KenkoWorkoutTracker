//
//  ContentView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isOnboarded = false
    
    var body: some View {
        if isOnboarded {
            HomeView()
        } else {
            OnboardingStackView(isOnboarded: $isOnboarded)
        }
    }
}

#Preview {
    ContentView()
}
