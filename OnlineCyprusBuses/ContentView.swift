//
//  ContentView.swift
//  OnlineCyprusBuses
//
//  Created by Ekaterina Isaeva on 18/06/2025.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    
    
    var body: some View {
        ZStack {
            Map {
                UserAnnotation()
            }
        }
    }
}

#Preview {
    ContentView()
}
