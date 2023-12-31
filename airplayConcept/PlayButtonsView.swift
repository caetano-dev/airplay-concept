//
//  PlayButtonsView.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct PlayButtonsView: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "backward.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color.white)
            Spacer()
            Image(systemName: "play.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.white)
                .frame(width: 30, height: 30)
            Spacer()
            Image(systemName: "forward.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color.white)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    PlayButtonsView()
}
