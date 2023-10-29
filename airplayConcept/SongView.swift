//
//  SongView.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct SongView: View {
    var body: some View {
        HStack {
            Image("blurryface")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(.buttonBorder)
            VStack (alignment: .leading){
                Text("Stressed Out")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                Text("Twenty One Pilots")
                    .font(.subheadline)
                    .foregroundStyle(Color.white).opacity(0.8)
            }
            .padding(5)
            
            Button(action: {
                // Add your action here
            }) {
                Image(systemName: "star")
                    .foregroundColor(.white)
            }
            .padding(5)
            .background(Color.accentColor)
            .clipShape(Circle())
            
            Button(action: {
                // Add your action here
            }) {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
            }
            .padding(12)
            .background(Color.accentColor)
            .clipShape(Circle())
        }
        .frame(maxWidth: .infinity)
        .background(Color("BackgroundColor"))
        
    }
}

#Preview {
    SongView()
}
