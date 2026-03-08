//
//  NewModifiers.swift
//  PluginAdmob
//
//  Created by Peter Popovec on 01/03/2026.
//

import MagicUiFramework
import SwiftUI

struct TemplatePluginModifier: SxModifierProtocol {
    @DynamicNode var node: MagicNode
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(node.convertToDouble() ?? 0.0), anchor: .center)
    }
}
