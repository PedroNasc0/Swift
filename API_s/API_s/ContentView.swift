//
//  ContentView.swift
//  API's
//
//  Created by Student22 on 12/09/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
       
                VStack{
                    Text("Piada")
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.red)
                        .bold()
                        ForEach(viewModel.game){ index in
                                HStack{
                                    Text(index.setup)
                                        .font(.system(.title, design: .rounded))
                                        .foregroundColor(.black)
                                        .bold()
                                }
                            }
                    
            }
            .onAppear(){
                viewModel.fetch()}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
