//
//  RecipeView.swift
//  YesChefChallenge
//
//  Created by Trytten, Blake - Student on 10/1/25.
//

import SwiftUI

struct RecipeView: View {
    @State private var showStep5 = false
    var body: some View {
        VStack {
            Button("Show Step 5") {
                withAnimation(.default) {
                    showStep5.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.system(size: 30, weight: .bold, design: .default))
            .opacity(showStep5 ? 0 : 1)
            Text("Step 1: Get your Bowl and fill it with the 3 cups of water\n\nStep 2: Add your Noodles and break them into 4ths with your hands\n\nStep 3: Microwave for 4 minutes \n\nStep 4: Add the flavorings and mix well\n\n")
                .font(.system(size: 30, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
                .padding()
            VStack {
                if showStep5 {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 250,height: 50)
                        .overlay (
                            Text("Step 5: Enjoy! :)")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .multilineTextAlignment(.center)
                                .opacity(showStep5 ? 1 : 0)
                                .foregroundStyle(.white)
                        )
                        .transition(.ScaleandOffset)
                    Text("press to remove")
                }
            }
            .onTapGesture {
                withAnimation(.default) {
                    showStep5.toggle()
                }
                
            }
            
            
        }
    }
}
extension AnyTransition {
    
    
    static var ScaleandOffset: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .scale(scale: 0, anchor: .bottom),
            removal: .offset(x:-600))
    }
    
    
}
#Preview {
    RecipeView()
}
