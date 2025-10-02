//
//  CalcView.swift
//  YesChefChallenge
//
//  Created by Trytten, Blake - Student on 10/1/25.
//

import SwiftUI

struct CalcView: View {
    
    @State private var multiply = false
    @State private var multiplyAmount = 1
    @State private var showChange = false
    @State private var people = 1
    @State private var showPeople = false
    
    
    @Binding var cupsOfWater: Int
    @Binding var numOfpacketsANDnoodlesANDbowls: Int
    var body: some View {
        VStack {
            Toggle("Multiple Servings?: \(showChange ? "On" : "Off")",isOn: $showChange)
            Toggle("Multiple People?: \(showPeople ? "On" : "Off")",isOn: $showPeople)
            Stepper("Number of Servings: \(multiplyAmount)",value:$multiplyAmount, in: 1...10)
                .padding()
                .opacity(showChange ? 1 : 0)
            Stepper("Number of People: \(people)",value:$people, in: 1...10)
                .padding()
                .opacity(showPeople ? 1 : 0)
            
            Text("\(numOfpacketsANDnoodlesANDbowls*multiplyAmount*people) pack of noodles, \n\n\(numOfpacketsANDnoodlesANDbowls*multiplyAmount*people) avarage sized bowls, and \n\n\(cupsOfWater*multiplyAmount*people) cups of water.")
                .font(.system(size: 45, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
                .padding()
        }
        
    }
}
func doubleRecipe() {
    
}
#Preview {
    @Previewable @State var cupsOfWater: Int = 3
    @Previewable @State var numOfpacketsANDnoodlesANDbowls: Int = 1
    
    CalcView(cupsOfWater: $cupsOfWater, numOfpacketsANDnoodlesANDbowls: $numOfpacketsANDnoodlesANDbowls)
}
