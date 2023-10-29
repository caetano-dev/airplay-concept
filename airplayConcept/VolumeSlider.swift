//
//  VolumeSlider.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct VolumeSlider: View {
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        HStack{
            Image(systemName: "volume.fill")
            
                .foregroundStyle(Color.white).opacity(0.5)
            Slider(value: $speed, in: 0...100, onEditingChanged: { editing in
                isEditing = editing
            })
            .onAppear {
                let progressCircleConfig = UIImage.SymbolConfiguration(scale: .small)
                UISlider.appearance()
                    .setThumbImage(UIImage(systemName: "circle.fill",
                                           withConfiguration: progressCircleConfig), for: .normal)
            }
            
            Image(systemName: "volume.3.fill")
                .foregroundStyle(Color.white).opacity(0.5)
        }
        .padding(30)
    }
}

#Preview {
    VolumeSlider()
}
