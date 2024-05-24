//
//  ContentView.swift
//  Aula 1
//
//  Created by Student22 on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Captura de Tela 2023-01-18 às 00.12.11").resizable()
                .scaledToFit().padding()
            Text("Hacktruck")
                .foregroundColor(Color .blue)
                .bold()
            HStack{
                Text("Marker")
                    .foregroundColor(Color .yellow)
                    .bold()
                Text("Space")
                    .foregroundColor(Color .red)
                    .bold()
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
