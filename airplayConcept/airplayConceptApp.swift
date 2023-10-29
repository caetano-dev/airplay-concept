//
//  airplayConceptApp.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

@main
struct airplayConceptApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .background(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: Color(red: 135/255, green: 64/255, blue: 84/255), location: 0.0),
                            .init(color: Color(red: 141/255, green: 76/255, blue: 81/255), location: 1.0)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }
    }
}
