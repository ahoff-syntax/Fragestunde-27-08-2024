//
//  ItemRow.swift
//  Fragestunde-27-08-2024
//
//  Created by Anna Hoff on 27.08.24.
//

import SwiftUI

struct ItemRow: View {
    var item: Person
    var action: () -> ()
    
    var body: some View {
        HStack {
            Text(String(item.numberOfBooks))
                .padding()
                .background(.red)
                
            Button("Klick mich") {
                action()
            }
            .buttonStyle(.plain)
        }
    }
}
//
//#Preview {
//    ItemRow(item: P)
//}
