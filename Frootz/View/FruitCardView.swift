//
//  FruitCardView.swift
//  Frootz
//
//  Created by Teemo Norman on 7/16/21.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE : ADDED INDIVIDUAL ANIMATION TO DO WHEN ON APPEAR TRIGGERED : CUSTOM SHADOW
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // FRUIT: TITLE : CUSTOM SHADOW
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
                
                
            } //VSTACK
        } // ZSTACK : ADDED TO START ALL ANIMATIONS ON APPEAR USING isANIMATING.
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}





//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
