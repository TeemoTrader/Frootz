//
//  SourceLinkView.swift
//  Frootz
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTIES
    
    
    
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                
            } // HSTACK
            .font(.footnote)
            
        } // BOX
    }
}





//MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
