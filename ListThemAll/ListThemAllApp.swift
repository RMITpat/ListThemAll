//
//  ListThemAllApp.swift
//  ListThemAll
//
//  Created by Patrick Ly on 21/2/2025.
//

import SwiftUI

@main
struct ListThemAllApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab {
                    PlaceIveBeenView()
                } label: {
                    Image(systemName: "globe")
                    
                }
                Tab {
                    ListOfStudents()
                } label: {
                    Image(systemName: "person.3")
                    
                }
                
                
                
                
            }
            
        }
    }
}
