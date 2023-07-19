//
//  ContentView.swift
//  TrafficLight2
//
//  Created by Марина Иванова on 18.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    private let on = 1.0
    private let off = 0.05
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 30.0) {
                LightView(color: .red, imageName: "hand.raised.circle.fill", opacity: tapCount == 1 ? on : off)
                LightView(color: .yellow, imageName: "exclamationmark.circle.fill", opacity: tapCount == 2 ? on : off)
                LightView(color: .green, imageName: "figure.walk.circle.fill", opacity: tapCount == 3 ? on : off)
                
                Button(action: switchLight) {
                    Text(tapCount == 0 ? "START" : "NEXT")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    private func switchLight() {
        if tapCount == 3 {
            tapCount = 0
        }
        tapCount += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
