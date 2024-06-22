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
            RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .fill(Color.blue)
                .foregroundColor(.white)
                .overlay(alignment: .center) {
                    Text("Aa")
                        .font(bigFont)
                }
        }
        .frame(minWidth: 75, minHeight: 75)
    }
}
