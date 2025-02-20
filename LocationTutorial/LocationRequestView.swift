//
//  LocationRequestView.swift
//  LocationTutorial
//
//  Created by Ryan Bowers on 9/23/24.
//

import SwiftUI

struct LocationRequestView: View {
    var body: some View {
        ZStack {
            Color(.systemBlue).ignoresSafeArea()

            VStack {
                Spacer()

                Image(systemName: "paperplane.circle.fill").resizable().scaledToFit().frame(width: 200, height: 200).padding(.bottom, 32)

                Text("Would you like to explore places nearby?").font(.system(size: 28, weight: .semibold)).multilineTextAlignment(.center).padding()

                Text("Start sharing your location with us").multilineTextAlignment(.center)
                    .frame(width: 140).padding()

                Spacer()

                VStack {
                    Button { LocationManager.shared.requestLocation() } label: {
                        Text("Allow Location").padding().font(.headline).foregroundColor(Color(.systemBlue))
                    }.frame(width: UIScreen.main.bounds.width).padding(.horizontal, -32).background(Color.white).clipShape(.capsule).padding()

                    Button {
                        print("Dismiss")
                    } label: {
                        Text("Maybe later").padding().font(.headline).foregroundColor(.white)
                    }
                }.padding(.bottom, 32)
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    LocationRequestView()
}
