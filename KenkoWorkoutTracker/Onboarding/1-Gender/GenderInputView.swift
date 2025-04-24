//
//  GenderInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct GenderInputView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Button("Next") {
                path.append(GenderInputRoute())
            }
        }
    }
}

#Preview {
    GenderInputView(path: .constant(NavigationPath()))
}
