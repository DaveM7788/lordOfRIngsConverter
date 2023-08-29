//
//  CurrencyIcon.swift
//  lordOfRIngsConverter
//
//  Created by David McDermott on 8/29/23.
//

import SwiftUI

struct CurrencyIcon: View {
    
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
        ZStack {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            VStack {
                
                Spacer()
                
                Text(currencyText)
                    .font(.caption)
                    .padding(3)
                    .background(.brown.opacity(0.8))
            }

        }
        .frame(width: 100, height: 100)
        .padding(3)
        .background(.brown)
        .cornerRadius(20)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
    }
}
