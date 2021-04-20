//
//  ContentView.swift
//  CardDesign001
//
//  Created by Vadiraj Hippargi on 4/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            HStack(alignment: .top) {
                VStack(alignment: .leading){
                Text("Vadiraj Hippargi")
                    .font(.title3)
                    .foregroundColor(.white)
                    Text("CEO and Manager")
                        .font(.caption)
                        .foregroundColor(.white)
                  
                }.padding()
                .offset(x: 0, y: -29.0)
           
            Spacer()
            Arrow()
                .stroke(lineWidth: 20)
                .frame(width: 50, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.pink)
                .padding()
            }.frame(width: 340, height: 200)
            .background(Color.green)
            .cornerRadius(20)
            .padding()
            
        }.frame(width: 340, height: 200)
        .padding(25)
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Arrow: Shape {
    // 1.
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.width
            let height = rect.height
            
            // 2.
            path.addLines( [
                CGPoint(x: width * 0.4, y: height),
                CGPoint(x: width * 0.4, y: height * 0.4),
                CGPoint(x: width * 0.2, y: height * 0.4),
                CGPoint(x: width * 0.5, y: height * 0.1),
                CGPoint(x: width * 0.8, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height * 0.4),
                CGPoint(x: width * 0.6, y: height)
                
            ])
            // 3.
            path.closeSubpath()
        }
    }
}
