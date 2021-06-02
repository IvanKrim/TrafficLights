//
//  Background.swift
//  TrafficLights
//
//  Created by Kalabishka Ivan on 02.06.2021.
//

import SwiftUI

struct Background: View {
    var body: some View {
        let colors = Gradient(colors: [.white, .blue, .black])
        let gradient = LinearGradient(gradient: colors, startPoint: .bottom, endPoint: .top)
        
        Rectangle()
            .fill(gradient)
            .ignoresSafeArea()
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
