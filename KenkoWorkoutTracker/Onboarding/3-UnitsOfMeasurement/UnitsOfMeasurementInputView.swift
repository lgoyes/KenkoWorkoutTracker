//
//  UnitsOfMeasurementInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct UnitsOfMeasurementInputView: View {
    @Binding var path: NavigationPath
    let numberOfSteps: Int
    let continueTapped: (any Hashable) -> Void

    var body: some View {
        InputView(currentStep: path.count, numberOfSteps: numberOfSteps, title: String(localized: "key_inputunits_title"), routeMarker: UnitsOfMeasurementInputRoute(), continueTapped: continueTapped) {
            EmptyView()
        }
    }
}

#Preview {
    UnitsOfMeasurementInputView(path: .constant(NavigationPath()), numberOfSteps: 5) { hash in
        print("Continue with hash> \(hash.hashValue)")
    }
}
