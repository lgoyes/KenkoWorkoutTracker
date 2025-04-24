//
//  HeightInputView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct HeightInputView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack {
            Button("Finish") {
                path.append(HeightInputRoute())
            }
        }
    }
}

#Preview {
    HeightInputView(path: .constant(NavigationPath()))
}
