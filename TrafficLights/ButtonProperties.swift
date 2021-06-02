//
//  ButtonProperties.swift
//  TrafficLights
//
//  Created by Kalabishka Ivan on 02.06.2021.
//

import SwiftUI

struct ButtonProperties: View {
    
    let buttonText: Text
    
    var body: some View {
        Text("\(buttonText)")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 180, height: 50)
            .background(Color(.blue))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 2)
            )
    }
}

struct ButtonProperties_Previews: PreviewProvider {
    static var previews: some View {
        ButtonProperties(buttonText: Text("Test"))
    }
}
