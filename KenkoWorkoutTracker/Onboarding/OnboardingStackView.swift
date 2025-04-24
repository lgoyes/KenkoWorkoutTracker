//
//  OnboardingStackView.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

struct OnboardingStackView: View {
    private enum Constant {
        static let numberOfSteps = 5
    }
    @Binding var isOnboarded: Bool
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            WelcomeView(path: $path)
                .navigationDestination(for: AuthInputRoute.self) { _ in
                    GenderInputView(path: $path, numberOfSteps: Constant.numberOfSteps) { hash in
                        path.append(hash)
                    }
                }
                .navigationDestination(for: GenderInputRoute.self) { _ in
                    AgeInputView(path: $path, numberOfSteps: Constant.numberOfSteps) { hash in
                        path.append(hash)
                    }
                }
                .navigationDestination(for: AgeInputRoute.self) { _ in
                    UnitsOfMeasurementInputView(path: $path, numberOfSteps: Constant.numberOfSteps) { hash in
                        path.append(hash)
                    }
                }
                .navigationDestination(for: UnitsOfMeasurementInputRoute.self) { _ in
                    WeightInputView(path: $path, numberOfSteps: Constant.numberOfSteps) { hash in
                        path.append(hash)
                    }
                }
                .navigationDestination(for: WeightInputRoute.self) { _ in
                    HeightInputView(path: $path, numberOfSteps: Constant.numberOfSteps) { hash in
                        path.append(hash)
                    }
                }
                .navigationDestination(for: HeightInputRoute.self) { _ in
                    EmptyView()
                        .onAppear {
                            isOnboarded = true
                        }
                }
        }
    }
}


#Preview {
    OnboardingStackView(isOnboarded: .constant(false))
}
