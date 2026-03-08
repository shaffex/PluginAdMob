//
//  ContentView.swift
//  PluginAdmob
//
//  Created by Peter Popovec on 01/03/2026.
//

import SwiftUI
import MagicUiFramework

struct ContentView: View {
    init() {
        PluginAdmob.initialise()
    }
    
    var body: some View {
        MagicUiView(resource: "Screen")
    }
}

#Preview {
    ContentView()
}
