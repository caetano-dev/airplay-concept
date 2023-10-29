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
                Text("Twenty One Pilots")
                    .font(.subheadline)
            }
            .padding(5)
            
            Button(action: {
                // Add your action here
            }) {
                Image(systemName: "star")
                    .foregroundColor(.white)
            }
            .padding(5)
            .background(Color.red)
            .clipShape(Circle())
            
            Button(action: {
                // Add your action here
            }) {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
            }
            .padding(12)
            .background(Color.red)
            .clipShape(Circle())
        }
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    SongView()
}
