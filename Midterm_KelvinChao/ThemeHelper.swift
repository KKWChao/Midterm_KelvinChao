//
//  ThemeHelper.swift
//  Midterm_KelvinChao
//
//  Created by Kelvin Chao on 10/19/25.
//

import UIKit
import SwiftUI

extension Drivers {
    var color: Color {
        switch teamColor.lowercased() {
        case "orange": return .orange
        case "red": return .red
        case "blue": return .blue
        case "green": return .green
        case "teal": return .teal
        case "indigo": return .indigo
        case "cyan": return .cyan
        case "mint": return .mint
        case "gray": return .gray
            
        default: return .gray
        }
    }
}
