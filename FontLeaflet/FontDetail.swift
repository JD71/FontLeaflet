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
        
        let previewFont = Font.custom(fontName, size: 24)
        
        VStack {
            DisclosureGroup("Preview") {
                VStack {
                    Text("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                        .font(previewFont)
                    Text("abcdefghijklmnopqrstuvwxyz")
                        .font(previewFont)
                    Text("0123456789")
                        .font(previewFont)
                }
            }
            DisclosureGroup("Repertoire") {
                Text("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                    .font(previewFont)
            }
        }
    }
}
