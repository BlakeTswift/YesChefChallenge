//
//  ContentView.swift
//  YesChefChallenge
//
//  Created by Trytten, Blake - Student on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var cupsOfWater: Int = 3
    @State var numOfpacketsANDnoodlesANDbowls: Int = 1
    
    
    var body: some View {
            TabView {
                VStack {
                    Text("How to make a delicious meal from home!")
                        .font(.system(size: 50, weight: .black, design: .default))
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    Image("ramen")
                        .resizable()
                        .frame(width: 250, height: 300)
                        .border(Color.yellow, width: 10)
                    Text("Known for being cheap and easy to make, ramen is a staple in many cultures around the world.")
                        .font(.system(size: 30, design: .default))
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    Divider()
                        .padding(3)
                }
                   
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                ingredientsView(cupsOfWater: $cupsOfWater, numOfpacketsANDnoodlesANDbowls: $numOfpacketsANDnoodlesANDbowls)
                    
                    .tabItem{
                        Image(systemName: "list.number")
                        Text("Ingredients")
                    }
                RecipeView()
                    .tabItem{
                        Image(systemName: "fork.knife.circle")
                        Text("Instructions")
                    }
                CalcView(cupsOfWater: $cupsOfWater, numOfpacketsANDnoodlesANDbowls: $numOfpacketsANDnoodlesANDbowls)
                    
                    .tabItem{
                            Image(systemName: "plus.circle")
                        Text("Calculator")
                    }
            }
        
    }
}

#Preview {
    ContentView()
}
