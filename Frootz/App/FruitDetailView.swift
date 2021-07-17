//
//  FruitDetailView.swift
//  Frootz
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: -  PROPERTIES
    var fruit: Fruit
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                        
                        
                    } // VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                } // VSTACK : ADDED THE TITLE TO INLINE THEN HID IT HERE
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            } // SCROLL : ADDED IGNORE TO IMAGE TO GO TO TOP
            .edgesIgnoringSafeArea(.top)
            
        } // NAVIGATION
    }
}








//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}