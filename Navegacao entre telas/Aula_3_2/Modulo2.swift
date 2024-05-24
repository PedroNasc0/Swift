//
//  Modulo2.swift
//  Aula_3_2
//
//  Created by Student22 on 04/09/23.
//

import SwiftUI

struct Modulo2: View {
    @State private var nome: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Digite seu nome: ", text: $nome)
                    .multilineTextAlignment(.center)
                    .frame(width: 350,height: 30)
                
                Text("Estamos percorrendo um caminho \(nome)")
                NavigationLink(destination: Modulo2_2(nome: nome)){
                    Text("Acessar Tela")
                }
                
            }
        }
    }
}

struct Modulo2_Previews: PreviewProvider {
    static var previews: some View {
        Modulo2()
    }
}
