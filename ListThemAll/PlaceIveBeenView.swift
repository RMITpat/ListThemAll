//
//  ContentView.swift
//  ListThemAll
//
//  Created by Patrick Ly on 21/2/2025.
//

import SwiftUI

struct PlaceIveBeenView: View {
    @State private var placeVisited = [
        "Vietnam",
        "China",
        "Singapore",
        "Cambodia",
        "New Zealand",
        "Tasmania",
        "Cairns",
        "Tokyo",
        "Sydney",
        "Oz",
        "Hogwarts",
        "Narnia",
        "The Shire",
        "Middle Earth",
        "Chocolate Factory",
        "The Continental",
        "The Great Hall",
        "Hogwarts Express",
        "Platform 9 3/4",
        "Diagon Alley",
        "Hogsmeade",
        
        
        
    ]
    
    var body: some View {
        NavigationStack {
            
            HStack {
                
                List {
                    ForEach(placeVisited, id: \.self) { place in
                        HStack {
                            Image(systemName: "mappin")
                                .foregroundColor(.blue)
                            
                            NavigationLink(place) {
                                NavigationLink(place) {
                                    newView()
                                }
                                
                            }
                        }
                        
                    }
                }
                .listStyle(.plain)
                
            }
            .navigationTitle("Place I've Visited")
            
        }
        
    }
}

#Preview {
    PlaceIveBeenView()
}
