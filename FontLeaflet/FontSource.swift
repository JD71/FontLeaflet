//
//  FontSource.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import AppKit
import Foundation
import SwiftUI

@Observable
class FontSource {
    let allFontNames = NSFontManager.shared.availableFonts
    
    var fontNames : [String] {
        return ["Andale Mono", "Baskerville", "Diwan Kufi"]
    }
    
    func getFont(fontName: String) -> Font {
        return Font.custom(fontName, size: 10.0)
    }
}
