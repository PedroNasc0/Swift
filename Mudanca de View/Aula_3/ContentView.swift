//
//  ContentView.swift
//  Aula_3
//
//  Created by Student22 on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var SelecionarTab = 1
    @State private var imgs = [
        "dumbbell.fill",
        "figure.run",
        "figure.jumprope",
        "figure.outdoor.cycle",
        "figure.pool.swim",
        "soccerball",
        "basketball.fill",
        "volleyball.fill",
        "figure.strengthtraining.traditional"]
    
    var body: some View {
        NavigationStack{
            TabView (selection: $SelecionarTab){
                List(1...20, id: \.self) {
                    Text("Item \($0)")
                }
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Text("Calculadora de ICM")
                    .tabItem{
                        Image(systemName: "clipboard.fill")
                        Text("Calcular ICM")
                    }
                ScrollView(showsIndicators: false){
                    Text("Atividades Recomendadas:")
                        .font(.title)
                    ForEach(imgs, id: \.self){ index in
                    Image(systemName: "\(index)")
                        .font(.system(size: 150))
                        .padding()
                    }
                }
                    .tabItem{
                        Image(systemName:"figure.gymnastics")
                        Text("Exercicos")
                    }
                Text("Mensagens")
                    .tabItem{
                    Image(systemName: "message.fill")
                    Text("Mensagens")
                }
                Text("Perfil")
                    .tabItem{
                        Image(systemName: "person.crop.circle.fill")
                        Text("Perfil")
                        
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
