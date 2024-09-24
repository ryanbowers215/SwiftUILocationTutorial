//
//  ContentView.swift
//  LocationTutorial
//
//  Created by Ryan Bowers on 9/21/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager.shared
    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                LocationRequestView()
            } else if let location = locationManager.userLocation{
                Text("\(location)").padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
