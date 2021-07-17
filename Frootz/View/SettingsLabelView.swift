//
//  SettingsLabelView.swift
//  Frootz
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
    }
}
}



//MARK: - PREVIEWWW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frootz", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
