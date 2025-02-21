//
//  ListOfStudents.swift
//  ListThemAll
//
//  Created by Patrick Ly on 21/2/2025.
//

import SwiftUI

struct ListOfStudents: View {
    let students = [
        "Patrick", "Trivesh", "Mansib", "Aryan", "Anushka", "Zhilin", "Linda", "Tanay", "Elly", "Noor", "Oscar", "Lucy", "Steve", "Allwin", "Abhijeet", "Amogh", "Yana", "Tilly", "Donovan", "Kerlyn", "Mira", "David", "Annie", "Sara", "Jonathan", "Akansha"
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach (students, id: \.self) { name in
                    HStack {
                        Image(systemName: "swift")
                            .foregroundColor(.orange)
                        NavigationLink(name){
                            studentDetailView(student: name)
                        }
                        .font(.title)
                    }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Swifties")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        LoginView()
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.orange)
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    ListOfStudents()
}
