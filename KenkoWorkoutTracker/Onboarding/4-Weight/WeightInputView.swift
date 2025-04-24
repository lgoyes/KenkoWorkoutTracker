//
//  WeightInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct WeightInputView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Button("Sign Up") {
                path.append(WeightInputRoute())
            }
        }
    }
}

#Preview {
    WeightInputView(path: .constant(NavigationPath()))
}
