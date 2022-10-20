//
//  ContentView.swift
//  class work 4-2
//
//  Created by Mac on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var BestTrack = "Q"
    var body: some View {
        VStack {
            
            Text("ماهو مسارك المفضل ؟")
                .font(.largeTitle)
            
            Image(BestTrack)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Spacer()
            Text("         iOS 🫀     ")
                .font(.largeTitle)
                .background(Color.blue.opacity(0.8))
                .cornerRadius(10)
                .onTapGesture {
                    BestTrack = "apple"
                   
                }
            Spacer()
            Text(" gamedev 👎🏻  ")
                .font(.largeTitle)
                .background(Color.red)
                .cornerRadius(10)
                .onTapGesture {
                    BestTrack = "unity"
                }
            Spacer()
            Text("    android 🙃  ")
                .font(.largeTitle)
                .background(Color.yellow.opacity(0.8))
                .cornerRadius(10)
                .onTapGesture {
                    BestTrack = "android"
                }
            Spacer()
            Text("       Web 🙁     ")
                .font(.largeTitle)
                .background(Color.green.opacity(0.8))
                .cornerRadius(10)
                .onTapGesture {
                    BestTrack = "VScode"
                }
                
        
                
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
