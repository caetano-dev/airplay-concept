//
//  OptionButtons.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct OptionButtons: View {
    var body: some View {
        HStack {
            Spacer()
            iconImage(systemName: "quote.bubble")
            Spacer()
            iconImage(systemName: "airplayaudio")
            Spacer()
            iconImage(systemName: "list.bullet")
            Spacer()
        }
    }
}
    
func iconImage(systemName: String) -> some View {
    Image(systemName: systemName)
        .resizable()
        .scaledToFit()
        .foregroundStyle(Color.white.opacity(0.8))
        .frame(width: 25, height: 25)
}

#Preview {
    OptionButtons()
}
