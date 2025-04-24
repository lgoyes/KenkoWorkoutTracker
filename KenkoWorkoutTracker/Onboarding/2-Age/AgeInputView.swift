//
//  AgeInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct AgeInputView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Button("Sign Up") {
                path.append(AgeInputRoute())
            }
            Button("Sign In") {
                // Skip onboarding, load session
                // You might set isOnboarded directly if sign in is successful
            }
        }
    }
}

#Preview {
    AgeInputView(path: .constant(NavigationPath()))
}
