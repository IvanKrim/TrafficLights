//
//  ContentView.swift
//  TrafficLights
//
//  Created by Kalabishka Ivan on 01.06.2021.
//

import SwiftUI

enum CurrentLight {
    case redLight, yellowLight, greenLight
}

 private let lightIsOn: Double = 1
 private let lightIsOff = 0.3

struct ContentView: View {
    
    @State private var showStartButton = true
    @State private var currentLight = CurrentLight.redLight
    
    @State private var redLight = lightIsOff
    @State private var yellowLight = lightIsOff
    @State private var greenLight = lightIsOff
    
    var body: some View {
        ZStack {
            Background()
            VStack {
                ColorCircle(color: .red, lightIs: redLight)
                ColorCircle(color: .yellow, lightIs: yellowLight)
                ColorCircle(color: .green, lightIs: greenLight)
                Spacer()
                buttonPressed
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - Extension
extension ContentView {
    
    private var buttonPressed : some View {
        Button(action: {
            self.showStartButton = false
            switchColor()
        }) {
            VStack {
                showStartButton ?
                    ButtonProperties(buttonText: Text("Start")) :
                    ButtonProperties(buttonText: Text("Next"))
            }
        }
    }
    
    func switchColor() {
        switch currentLight {
        case .redLight:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellowLight
        case .yellowLight:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = .greenLight
        case .greenLight:
            yellowLight = lightIsOff
            greenLight = lightIsOn
            currentLight = .redLight
        }
    }
}

