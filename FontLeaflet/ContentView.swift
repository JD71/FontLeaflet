//
//  ContentView.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FontGridView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
        .environment(FontSource(previewMode: true))
}
