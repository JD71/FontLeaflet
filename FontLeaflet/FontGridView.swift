//
//  FontGridView.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import Foundation
import SwiftUI

struct FontGridView: View {
    @Environment(FontSource.self) var fontSource

    let columns = [GridItem(.adaptive(minimum:100))]

    var body: some View {
        @Bindable var fontSource = fontSource

        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(fontSource.fontNames, id: \.self) { fontName in
                        NavigationLink {
                            FontDetail(fontName: fontName)
                        } label: {
                            FontGridCell(fontName: fontName)
                        }
                    }
                }
                .frame(minWidth:200, maxHeight: .infinity)
                .layoutPriority(1)
            }
        }
        .frame(minWidth:200, maxHeight: .infinity)
    }
}

#Preview {
    FontGridView()
        .environment(FontSource())
}
