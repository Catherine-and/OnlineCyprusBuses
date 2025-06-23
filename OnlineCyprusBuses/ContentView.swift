//
//  ContentView.swift
//  OnlineCyprusBuses
//
//  Created by Ekaterina Isaeva on 18/06/2025.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var fromQuery: String = ""
    @State private var toQuery: String = ""
    @State private var selectedDetent: PresentationDetent = .fraction(0.15)
    
    @State private var locationManager = LocationManager.shared
    
    
    func getRoute(from: String, to: String) {
        // from = fromQuery
        // to = toQuery
    }
    
    var body: some View {
        ZStack {
            Map {
                UserAnnotation()
            }
            .sheet(isPresented: .constant(true), content: {
                VStack(spacing: 20) {
                    HStack {
                        TextField("From", text: $fromQuery)
                        TextField("To", text: $toQuery)
                    }
                    Button("Search") {
                        // act
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
                .textFieldStyle(.roundedBorder)
                Spacer()
                
                    .presentationDetents([.fraction(0.15), .medium, .large], selection: $selectedDetent)
                    .presentationDragIndicator(.visible)
                    .interactiveDismissDisabled()
                    .presentationBackgroundInteraction(.enabled(upThrough: .medium))
            })
            
        }
    }
}


#Preview {
    ContentView()
}
