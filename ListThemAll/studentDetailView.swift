//
//  studentDetailView.swift
//  ListThemAll
//
//  Created by Patrick Ly on 21/2/2025.
//

import SwiftUI

struct studentDetailView: View {
    let student: String
    
    var body: some View {
        Form{
            Text("\(student)")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            Section{
                Text("details")
            }
        }
    }
}

#Preview {
    studentDetailView(student: "Steph W")
}
