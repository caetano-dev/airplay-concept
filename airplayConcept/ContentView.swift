//
//  ContentView.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct Device: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var location: String
    var selected: Bool
    var song: String
    var artist: String
    
}

struct ContentView: View {
    
    @State private var devices: [Device] = [
        Device(name: "homepod.fill", location: "Bathroom", selected: false, song: "Shape of You", artist: "Ed Sheeran"),
        Device(name: "homepodmini.fill", location: "Kitchen", selected: true, song: "Blinding Lights", artist: "The Weeknd"),
        Device(name: "homepod.2.fill", location: "Living Room", selected: true, song: "Uptown Funk", artist: "Mark Ronson ft. Bruno Mars"),
        Device(name: "homepodmini.2.fill", location: "Master Bedroom + Hallway", selected: false, song: "Watermelon Sugar", artist: "Harry Styles"),
        Device(name: "homepodmini.fill", location: "Garage", selected: false, song: "Happy", artist: "Pharrell Williams"),
    ]
    
    var body: some View {
        VStack{
            SongView()
            MoveButton()
                .frame(height: 140)
            
            HStack{
                Text("Speakers and TV's")
                Spacer()
            }
            .padding(.horizontal, 20)
                
        }
        List(devices) { device in
            HStack(alignment: .center) {
                Image(systemName: device.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35) // Set a fixed size for the images
                    .foregroundColor(.gray)
                    .padding(.trailing, 3)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(device.location)
                        .fontWeight(.medium)
                    
                    Text("\(device.song) - \(device.artist)")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                
                Spacer()
                
                if device.selected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .font(.title2)
                } else {
                    Image(systemName: "circle")
                        .foregroundColor(.gray)
                        .font(.title2)
                }
            }
            .padding(.trailing, 10)
            .background(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: .clear, location: 0.7),
                        .init(color: .white, location: 1.0)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }


    }
    
}
#Preview {
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
    //135,64,84 until 141 76 81
}

