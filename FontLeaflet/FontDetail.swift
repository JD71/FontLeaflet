//
//  FontDetail.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import Foundation
import SwiftUI

struct FontDetail: View {
    @Environment (FontSource.self) var fontSource
    var fontName: String
    
    var body: some View {
        @Bindable var fontSource = fontSource
        
        VStack {
            Text(fontName)
                .font(fontSource.getFont(fontName: fontName))
            Text("bezier goes here")
        }
    }
}
