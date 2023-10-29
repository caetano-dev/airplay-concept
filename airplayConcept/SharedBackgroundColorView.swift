//
//  SharedBackgroundColor.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI
import Foundation

struct SharedBackgroundColorView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .background(Color("BackgroundColor"))
    }
}
