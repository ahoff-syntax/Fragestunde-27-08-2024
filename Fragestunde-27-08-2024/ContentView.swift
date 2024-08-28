//
//  ContentView.swift
//  Fragestunde-27-08-2024
//
//  Created by Anna Hoff on 27.08.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var persons: [Person] = [
        Person(firstName: "Bünyamin", lastName: "Ilhan", birthYear: 1989, books: ["Herr der Ringe", "Buch 2"])
        ]
    
    @State var distance: Distance = Distance(kilometers: 5)
    
    
    
    var body: some View {
        VStack {
            List {
                ForEach(persons, id: \.id) { person in
                    ItemRow(item: person) {
                        print("Button geklickt")
                    }
                    .padding()
                }
            }
            
            ItemRow(item: Person(firstName: "asdd", lastName: "qwee", birthYear: 2000, books: ["asd", "qw", "yxc"]), action: {printHallo()})
            
            HStack {
                Text("Kilometer: \(distance.kilometers)")
                Text("Meter: \(distance.meters)")
            }
            
            Button("Meter um 1000 erhöhen") {
                distance.meters = distance.meters + 1000
            }
            
        }
        .padding()
    }
    
  
    func printHello() {
        print("Hello")
    }
}

#Preview {
    ContentView()
}

func printHallo() {
    print("Hallo")
}
