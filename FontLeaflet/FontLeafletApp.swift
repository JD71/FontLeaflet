//
//  FontLeafletApp.swift
//  FontLeaflet
//
//  Created by Jeff Doar on 6/20/24.
//

import SwiftUI

@main
struct FontLeafletApp: App {
    @State private var fontSource = FontSource()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(fontSource)
        }
    }
}
