//
//  ContentView.swift
//  Aula_2
//
//  Created by Student22 on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var resultado: Double = 0
    @State private var cor = Color.white
    @State private var ICM = ""
    
    var body: some View {
        ZStack {
            cor
                .ignoresSafeArea()
            
            VStack{
                Text("Calculadora de IMC")
                    .font(.title)
                    .padding(.bottom)
                Text("Peso")
                TextField("Peso", value: $peso, formatter:NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color("Fundo"))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                    .cornerRadius(300)
                Text("Altura")
                TextField("Altura", value: $altura, formatter:NumberFormatter())
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color("Fundo"))
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                    .cornerRadius(300)
                
                Button("Calcular"){
                    resultado = peso / (altura * altura)
                    if(resultado <= 18.5){
                        ICM = "Baixo peso"
                        cor = Color ("Baixo")
                        }else if (resultado > 18.5 && resultado <= 24.99){
                            ICM = "Normal"
                            cor = Color ("Normal")
                            }else if (resultado >= 25 && resultado <= 29.99){
                                ICM = "Sobrepeso"
                                cor = Color ("Gordo")
                                }else{
                                    ICM = "Obesidade"
                                    cor = Color ("Obeso")
                                }
                }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(300)
                Spacer()
                Text("\(ICM)")
                    .font(.title)
                    .foregroundColor(Color.white)
                
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 450,height: 200)
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: 35)
                    .shadow(radius: 25)
            }
        }
        .padding(.bottom)
        .padding(.horizontal)
    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
