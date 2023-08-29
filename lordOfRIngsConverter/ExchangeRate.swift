//
//  ExchangeRate.swift
//  lordOfRIngsConverter
//
//  Created by David McDermott on 8/29/23.
//

import SwiftUI

// use 4 of these on ExchangeInfo screen. need  properties
struct ExchangeRate: View {
    
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpiece", text: "1 = 1", rightImage: "goldpiece")
            .previewLayout(.sizeThatFits)
    }
}
