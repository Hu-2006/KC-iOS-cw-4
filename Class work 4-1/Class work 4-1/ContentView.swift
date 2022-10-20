//
//  ContentView.swift
//  Class work 4-1
//
//  Created by Mac on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = ""
    @State var work = ""
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()

            VStack{
                Text("حاسبة الدرجات")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                Spacer()
                Image("hard work")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .clipShape(Circle())
                    .padding()
                Spacer()
                TextField("ادخل درجتك",text:$result)
                    .font(.title3)
                    .foregroundColor(.black)
                    .fontWeight(.medium)
        
                    .padding()
                   Text("احسب الدرجة")
                        .font(.title3)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .padding()
                        .background(Color.black.opacity(0.8))
                        .cornerRadius(15)
                        .padding()
                    .onTapGesture{
                        if Int(result) ?? 0 >= 90 {
                            work = ("A")
                        } else if Int(result) ?? 0 >= 80 {
                            work = ("B")
                        }else if Int(result) ?? 0 >= 70 {
                            work = ("C")
                        }else if Int(result) ?? 0 >= 60 {
                            work = ("D")
                        }else {
                            work = ("F")
                        }
                       
                        }
                    Spacer()
                Text(work)
                    .font(.system(size: 100))
                    .foregroundColor(.white)
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
