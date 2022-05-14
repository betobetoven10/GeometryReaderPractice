//
//  ContentView.swift
//  GeometryReaderPractice
//
//  Created by Alberto Madueño Navarrete on 5/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            Rectangle()
                .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                .onTapGesture {
                    print("global x: \(geo.frame(in: .global).minX), global y: \(geo.frame(in: .global).minY)")
                    print("local x: \(geo.frame(in: .local).minX), local y: \(geo.frame(in: .local).minY)")                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
