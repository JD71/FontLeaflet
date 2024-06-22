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
    let allFontNames = NSFontManager.shared.availableFontFamilies
    
    var fontNames : [String] {
        return previewMode ? ["Andale Mono", "Baskerville", "Diwan Kufi"] : allFontNames
    }
    
    init(previewMode: Bool) {
        self.previewMode = previewMode
    }
    
    init() {
        self.previewMode = false
    }
    
    let previewMode: Bool
    
    func getFont(fontName: String) -> Font {
        return Font.custom(fontName, size: 10.0)
    }
}
