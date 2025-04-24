//
//  OnboardingStackView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct OnboardingStackView: View {
    @Binding var isOnboarded: Bool
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            WelcomeView(path: $path)
                .navigationDestination(for: AuthInputRoute.self) { _ in
                    GenderInputView(path: $path)
                }
                .navigationDestination(for: GenderInputRoute.self) { _ in
                    HeightInputView(path: $path)
                }
                .navigationDestination(for: HeightInputRoute.self) { _ in
                    WeightInputView(path: $path)
                }
                .navigationDestination(for: WeightInputRoute.self) { _ in
                    isOnboarded = true
                    return EmptyView()
                }
        }
    }
}


#Preview {
    OnboardingStackView(isOnboarded: .constant(false))
}
