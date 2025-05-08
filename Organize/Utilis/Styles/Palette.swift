//
//  Palette.swift
//  Organize
//
//  Created by Fernanda Perovano on 04/05/25.
//

import SwiftUI

enum Palette: String {
    case label
    case background
    case aquamarine
    case lavender
    case mauve
    case error
    case sucess
    case reBlack
    case reWhite
    
    var render: Color {
        Color(self.rawValue)
    }
}






