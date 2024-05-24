//
//  Modulo2_2.swift
//  Aula_3_2
//
//  Created by Student22 on 04/09/23.
//

import SwiftUI

struct Modulo2_2: View {
    var nome: String
    
    var body: some View {
        NavigationStack{
            Text("Volte, \(nome)")
        }
    }
}

struct Modulo2_2_Previews: PreviewProvider {
    static var previews: some View {
        Modulo2_2(nome: "")
    }
}
