//
//  SelectCurrency.swift
//  lordOfRIngsConverter
//
//  Created by David McDermott on 8/29/23.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    
    // binds to same variables in ContentView (Main)
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
    var body: some View {
        ZStack {
            
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // $ is for binding
                IconGrid(currency: $leftCurrency)
                
                Text("Select the currency you are converting to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                IconGrid(currency: $rightCurrency)
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
