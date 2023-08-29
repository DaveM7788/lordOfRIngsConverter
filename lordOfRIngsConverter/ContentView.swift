//
//  ContentView.swift
//  lordOfRIngsConverter
//
//  Created by David McDermott on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                HStack {
                    VStack {
                        HStack {
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text("Silver Piece")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            
                        }
                        Text("Text Field")
                    }
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    VStack {
                        HStack {
                            Text("Gold Piece")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        Text("Text Field")
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label : {
                        Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
