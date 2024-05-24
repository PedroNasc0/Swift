//
//  ContentView.swift
//  Aula_3_2
//
//  Created by Student22 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: Modulo1()){
                    Text("Modulo1")
                }
                NavigationLink(destination: Modulo2()){
                    Text("Modulo2")
                }
                NavigationLink(destination: Modulo3()){
                    Text("Modulo3")
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
