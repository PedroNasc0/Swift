//
//  D2.swift
//  Aula 1
//
//  Created by Student22 on 31/08/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image("Captura de Tela 2023-01-18 às 00.12.11").resizable()
                    .scaledToFit()
            
                Image("Captura de Tela 2023-01-18 às 00.12.11")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(400)
                    .padding(.horizontal,100)
                    .padding(.top)
                    .overlay(Text ("HackTruck").padding(.bottom, 70))
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(Color .blue)
                
                Rectangle()
                    .frame(width: 200, height: 200)
                    .padding(.horizontal,100)
                    .padding(.top)
                    .overlay(Text ("Market").foregroundColor(Color .red).padding(.leading, -80))
                    .overlay(Text ("Space").foregroundColor(Color .yellow).padding(.leading, 80))
                    .font(.system(size: 25))
                
            }
        }
    }
            
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
