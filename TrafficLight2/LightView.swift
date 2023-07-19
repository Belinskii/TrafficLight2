//
//  LightView.swift
//  TrafficLight2
//
//  Created by Марина Иванова on 19.07.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let imageName: String
    let opacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color.opacity(opacity))
                .frame(width: UIScreen.main.bounds.width * 0.45 )
                .overlay(Circle().stroke(Color.white.opacity(opacity), lineWidth: 4))
                .shadow(color: color, radius: 20)
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .frame(height: UIScreen.main.bounds.width * 0.45)
        }
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, imageName: "hand.raised.circle.fill", opacity: 1)
    }
}
