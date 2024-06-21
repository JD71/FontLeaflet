//
//  FontDetail.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import Foundation
import SwiftUI

struct FontDetail: View {
    var fontName: String
    
    var body: some View {
        HSplitView {
            Text(fontName)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text("bezier goes here")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
