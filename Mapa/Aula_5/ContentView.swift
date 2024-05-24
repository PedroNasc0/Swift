//
//  ContentView.swift
//  Aula_5
//
//  Created by Student22 on 06/09/23.
//

import SwiftUI
import MapKit

struct local: Identifiable{
    let id = UUID()
    let nome: String
    let cordenada: CLLocationCoordinate2D
    let bandeira: String
    let anotacao: String
    }

struct ContentView: View {
    @State private var regiao = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span:MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 0.5) )
    @State private var nomeTopo: String = "Londres"
    @State private var sheets = false
    @State private var cor = Color.black
    
    let paises: [local] = [
        local(nome: "Brasil", cordenada: CLLocationCoordinate2D(latitude: -15.7801, longitude: -47.9292), bandeira: "brasil" , anotacao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
        local(nome: "Japão", cordenada: CLLocationCoordinate2D(latitude: 35.6894, longitude: 139.692), bandeira: "Japao", anotacao: "O Japão, país insular no Oceano Pacífico, tem cidades densas, palácios imperiais, parques nacionais montanhosos e milhares de santuários e templos. Os trens-bala Shinkansen conectam as principais ilhas: Kyushu (com as praias subtropicais de Okinawa), Honshu (onde ficam Tóquio e a sede do memorial da bomba atômica de Hiroshima) e Hokkaido (famosa como destino para a prática de esqui). Tóquio, a capital, é conhecida por seus arranha-céus e lojas e pela cultura pop."),
        local(nome: "Itália", cordenada: CLLocationCoordinate2D(latitude: 41.8905, longitude: 12.4942), bandeira: "italia", anotacao: "A Itália, país europeu com uma longa costa mediterrânea, deixou uma marca poderosa na culinária e na cultura ocidentais. A capital, Roma, é sede do Vaticano e abriga obras de arte monumentais e ruínas antigas. Outra cidade importante é Florença, com obras-primas do Renascimento, como o Davi, de Michelangelo, e o Domo de Brunelleschi. Destacam-se também Veneza, a cidade dos canais, e Milão, capital da moda italiana."),
        local(nome: "África", cordenada: CLLocationCoordinate2D(latitude: -8.83833, longitude: 13.2344), bandeira:"africa", anotacao: "A África é o terceiro continente mais extenso com cerca de 30 milhões de quilômetros quadrados, cobrindo 20,3% da área total da terra firme do planeta. É o segundo continente mais populoso da Terra com cerca de um bilhão de pessoas, representando cerca de um sétimo da população mundial, e 54 países independentes.")
    ]
    var body: some View {
        
        ZStack{
            cor
            VStack{
                Text("Mapa Mundial")
                    .font(.title)
                    .padding(.top,50)
                    .foregroundColor(Color.white)
                Spacer()
                Text("\(nomeTopo)")
                    .foregroundColor(Color.white)
                    .font(.title2)
                Spacer()
                Map(coordinateRegion: $regiao, annotationItems: paises){ i in
                    MapAnnotation(coordinate: i.cordenada){
                        Image(systemName: "info.circle.fill")
                            .font(.system(size:35))
                            .frame(width: 400, height: 730)
                            .onTapGesture {
                                sheets.toggle()
                                }
                            .sheet(isPresented: $sheets){
                                Text("\(i.nome)")
                                    .font(.title)
                                    .padding()
                                Image("\(i.bandeira)")
                                    .resizable()
                                    .frame(width: 100, height:100)
                                    .padding()
                                Text(i.anotacao)
                                    .font(.title3)
                                    .padding()
                                }
                            }
                }
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(paises) { paise in
                        Button((paise.nome)){
                            nomeTopo = paise.nome
                            regiao.center = paise.cordenada
                        }
                        .frame(width: 120,height: 70)
                        .background(Color.blue)
                        .cornerRadius(200)
                        .foregroundColor(Color.white)
                        .padding(5)
                    }
                }
            }
            .position(x:197,y:420)
            .frame(width: 393,height: 80)
        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
