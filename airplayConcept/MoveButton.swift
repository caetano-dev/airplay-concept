//
//  MoveButton.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct MoveButton: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            Image(systemName: "iphone.gen2")
                .font(.title)
                .padding(.trailing)
                .foregroundStyle(Color.white)
            Text("Move to iPhone")
                .foregroundStyle(Color.white)
            Spacer()
        }
        .padding(10)
        .background(Color.accentColor)
        .clipShape(.buttonBorder)
        .padding(30)
        .background(Color("BackgroundColor"))
    }
        
}
#Preview {
    MoveButton()
}
