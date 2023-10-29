//
//  MoveButton.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct MoveButton: View {
    var body: some View {
        
            List{
                HStack(alignment: .center, spacing: 0){
                    Image(systemName: "iphone.gen2")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                    Text("Move to iPhone")
                    Spacer()
                }
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .clipShape(.buttonBorder)
                .listRowBackground(Color("BackgroundColor"))
        }
    }
}
#Preview {
    MoveButton()
}
