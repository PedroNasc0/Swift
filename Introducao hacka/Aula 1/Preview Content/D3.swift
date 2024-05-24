//
//  D3.swift
//  Aula 1
//
//  Created by Student22 on 31/08/23.
//

import SwiftUI

struct D3: View {
    @State private var alerta = false
    @State private var name: String = ""
    
    var body: some View {
        ZStack{
            Text("Fala tu, \(name)")
                .font(.largeTitle)
                .padding(.bottom,600)
            Image("Captura de Tela 2023-01-18 às 00.12.11")
                .resizable()
                .opacity(0.2)
                .scaledToFill()
                .padding(.top, -50)
                .blur(radius: 3)
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 230, height: 230)
                .shadow(radius: 50)
            Image("truck")
                .resizable()
                .scaledToFit()
                .frame(width: 230, height: 230)
                .shadow(radius: 50)
                .padding(.top, 200)
            Button("Entrar") {
                alerta = true}
                .padding(.top,600)
                .alert(isPresented: $alerta){
            Alert(title: Text ("Seja Bem-Vindo"), message: Text ("Olá \(name)"),dismissButton: .default(Text ("Continuar")))}
            TextField("Digite seu nome: ", text: $name)
                    .padding(.bottom,500)
                    .multilineTextAlignment(.center)
                    .frame(width: 350,height: 30)

        }
        
    }
}
struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
