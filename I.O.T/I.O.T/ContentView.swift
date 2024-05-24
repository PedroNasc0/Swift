//
//  ContentView.swift
//  I.O.T
//
//  Created by Student22 on 20/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Batimentos")
            ForEach(Bpm.batimento){ index in
                Text(index.batimento)
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.black)
                    .bold()
                }
        }
        .onAppear(){
            ViewModel.fetch()}
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
