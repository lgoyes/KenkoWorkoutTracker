//
//  AppGradient.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

enum AppGradient {
    static let primary: LinearGradient = .init(
        gradient: Gradient(colors: [ AppColor.Primary.DeepBlue.color, AppColor.DarkBlue.Charcoal.color]),
        startPoint: .leading,
        endPoint: .trailing
    )
    static let secondary: LinearGradient = .init(
        gradient: Gradient(colors: [ AppColor.Secondary.PumpkinOrange.color, AppColor.Secondary.BurntOrange.color]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    static let accent: LinearGradient = .init(
        gradient: Gradient(colors: [ AppColor.Accent.MintGreen.color, AppColor.Accent.ForestGreen.color]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
