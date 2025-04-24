//
//  UnitsOfMeasurementInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct UnitsOfMeasurementInputView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Button("Sign Up") {
                path.append(UnitsOfMeasurementInputRoute())
            }
            Button("Sign In") {
                // Skip onboarding, load session
                // You might set isOnboarded directly if sign in is successful
            }
        }
    }
}

#Preview {
    UnitsOfMeasurementInputView(path: .constant(NavigationPath()))
}
