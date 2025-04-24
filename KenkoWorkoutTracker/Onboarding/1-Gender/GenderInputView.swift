//
//  GenderInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct GenderInputView: View {
    @Binding var path: NavigationPath
    let numberOfSteps: Int
    let continueTapped: (any Hashable) -> Void

    var body: some View {
        InputView(currentStep: path.count, numberOfSteps: numberOfSteps, title: String(localized: "key_inputgender_title"), subtitle: String(localized: "key_inputgender_subtitle"), routeMarker: GenderInputRoute(), continueTapped: continueTapped) {
            EmptyView()
        }
    }
}

#Preview {
    GenderInputView(path: .constant(NavigationPath()), numberOfSteps: 5) { hash in
        print("Continue with hash> \(hash.hashValue)")
    }
}
