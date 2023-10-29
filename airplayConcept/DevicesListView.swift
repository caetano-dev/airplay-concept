//
//  DevicesList.swift
//  airplayConcept
//
//  Created by Pedro Caetano on 29/10/23.
//

import SwiftUI

struct Device: Identifiable, Equatable, Hashable {
    var id = UUID()
    var name: String
    var location: String
    var selected: Bool
    var song: String
    var artist: String
    
}

struct DevicesListView: View {
    
    @State private var devices: [Device] = [
        Device(name: "homepod.fill", location: "Bathroom", selected: false, song: "Shape of You", artist: "Ed Sheeran"),
        Device(name: "homepodmini.fill", location: "Kitchen", selected: true, song: "Blinding Lights", artist: "The Weeknd"),
        Device(name: "homepod.2.fill", location: "Living Room", selected: true, song: "Uptown Funk", artist: "Mark Ronson ft. Bruno Mars"),
        Device(name: "homepodmini.2.fill", location: "Master Bedroom + Hallway", selected: false, song: "Watermelon Sugar", artist: "Harry Styles"),
        Device(name: "homepodmini.fill", location: "Garage", selected: false, song: "Happy", artist: "Pharrell Williams"),
    ]
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Speakers and TV's")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            .background(Color("BackgroundColor"))
            .offset(CGSize(width: 0, height: 30.0))
            
            List(devices){ device in
                    HStack(alignment: .center) {
                        Image(systemName: device.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.white)
                            .padding(.trailing, 3)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(device.location)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                            
                            Text("\(device.song) - \(device.artist)")
                                .font(.subheadline)
                                .foregroundStyle(Color.white)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                        
                        Spacer()
                        
                        if device.selected {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(Color.white)
                                .font(.title2)
                        } else {
                            Image(systemName: "circle")
                                .foregroundStyle(Color.white)
                                .font(.title2)
                        }
                    }
                    .padding(.trailing, 10)
                    .listRowBackground(Color.accentColor)
                    
                }
                .onAppear(perform: {
                    UITableView.appearance().contentInset.top = -45
                })
                .scaledToFit()
                
            }.background(Color("BackgroundColor"))
        }}
#Preview {
    DevicesListView()
    .padding(.horizontal, 10)
    .scrollContentBackground(.hidden)
}
