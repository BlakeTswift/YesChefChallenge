//
//  ingredientsView.swift
//  YesChefChallenge
//
//  Created by Trytten, Blake - Student on 10/1/25.
//

import SwiftUI

struct ingredientsView: View {
    @Binding var cupsOfWater: Int
    @Binding var numOfpacketsANDnoodlesANDbowls: Int
    
    var body: some View {
        Text("Each serving of Ramen will have its own packet of \n\(numOfpacketsANDnoodlesANDbowls) noodle/s, \n\(numOfpacketsANDnoodlesANDbowls) bowl/s, and \n\(cupsOfWater) cups of water.")
            .font(.system(size: 30, weight: .bold, design: .default))
            .multilineTextAlignment(.center)
            .padding()

    }
}

#Preview {
    @Previewable @State var cupsOfWater: Int = 0
    @Previewable @State var numOfpacketsANDnoodlesANDbowls: Int = 0
    ingredientsView(cupsOfWater: $cupsOfWater, numOfpacketsANDnoodlesANDbowls: $numOfpacketsANDnoodlesANDbowls)
}
