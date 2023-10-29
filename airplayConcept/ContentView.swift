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
                .frame(height: 140)
            
            HStack{
                Text("Speakers and TV's")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                Spacer()
            }
            .padding(.horizontal, 20)
            .background(Color("BackgroundColor"))
            DevicesListView()
            .padding(.horizontal, 10)
                .scrollContentBackground(.hidden)
        }
    }
        
}
#Preview {
    ContentView()
        .background(Color("BackgroundColor"))
        
}


