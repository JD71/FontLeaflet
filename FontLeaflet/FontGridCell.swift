//
//  FontDetail.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import Foundation
import SwiftUI

struct FontGridCell: View {
    @Environment (FontSource.self) var fontSource
    var fontName: String


    var body: some View {
        @Bindable var fontSource = fontSource

        let smallFont = fontSource.getFont(fontName: fontName)
        let bigFont = Font.custom(fontName, size: 24)

        VStack {
            Text("Aa")
                .font(bigFont)

            Text(fontName)
                .font(smallFont)

        }
        .frame(minWidth: 75, minHeight: 75)
    }
}
