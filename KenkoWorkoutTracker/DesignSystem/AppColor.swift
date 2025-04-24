//
//  AppColor.swift
//  KenkoWorkoutTracker
//
//  Created by Luis David Goyes Garces on 24/4/25.
//

import SwiftUI

protocol Colorable: RawRepresentable where RawValue == String {
    var color: Color { get }
}
extension Colorable {
    var color: Color {
        Color(self.rawValue)
    }
}

enum AppColor {
    enum Primary: String, Colorable {
        case DeepBlue
        case VibrantBlue
        case MediumBlue
        case SoftPeriwinkle
        case LightGrayBlue
    }
    enum Secondary: String, Colorable {
        case BurntOrange
        case PumpkinOrange
        case WarmApricot
        case SoftPeach
        case LightBeige
    }
    enum DarkBlue: String, Colorable {
        case Charcoal
        case DeepNavy
        case IndigoNight
        case SteelBlue
        case CloudGray
    }
    enum Accent: String, Colorable {
        case ForestGreen
        case MintGreen
        case LightMint
        case PaleMint
        case SnowWhite
    }
}
