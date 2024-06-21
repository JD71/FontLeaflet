//
//  FontNavigationView.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import Foundation
import SwiftUI

struct FontNavigationView : View {
    @Environment(FontSource.self) var fontSource
    @State private var selectedFont: String?
    
    var body: some View {
        @Bindable var fontSource = fontSource
        
        NavigationSplitView {
            List(selection: $selectedFont) {
                ForEach(fontSource.fontNames, id: \.self) { fontName in
                    NavigationLink {
                        FontDetail(fontName: fontName)
                    } label: {
                        Text(fontName)
                    }
                }
            }
        } detail: {
            Text("select a font")
        }
    }
}
