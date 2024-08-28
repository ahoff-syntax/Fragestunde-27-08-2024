//
//  Distance.swift
//  Fragestunde-27-08-2024
//
//  Created by Anna Hoff on 27.08.24.
//

import Foundation

struct Distance {
    var kilometers: Int
    
    var meters: Int {
        get {
            kilometers * 1000
        }
        set(newMeters) {
            kilometers = newMeters / 1000
        }
        
    }
}
