//
//  ContentView.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            SongView()
            MoveButton()
                .frame(height: 100)
            
            DevicesListView()
                .padding(.horizontal, 13)
                .scrollContentBackground(.hidden)
                .offset(CGSize(width: 0, height: -30.0))
            PlayButtonsView()
            VolumeSlider()
            OptionButtons()
               
                
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
        .background(Color("BackgroundColor"))
    
}


