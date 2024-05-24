//
//  ContentView.swift
//  Aula4
//
//  Created by Student22 on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var SelecionarTab = 1
    struct Song: Identifiable {
        let id = UUID()
        let nome: String
        let artista: String
        let coverImage: String
    }
    let songs: [Song] = [
        Song(nome:"Nota Dó",artista:"Tz da Coronel",coverImage:"tz"),
        Song(nome:"Perdas",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Refém",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Celine",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Pra Que Isso?",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Voltar No Tempo",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Meu Neném",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Ganhos",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"2023",artista:"Vulgo FK",coverImage:"vulgo"),
        Song(nome:"Porsche Hortelã",artista:"Vulgo FK",coverImage:"vulgo")
    ]
    let rec: [Song] = [
        Song(nome: "Convoque Seu Buda", artista: "Criolo", coverImage: "1"),
        Song(nome: "777-666", artista: "Matue", coverImage: "3"),
        Song(nome: "Minha Cura", artista: "Cabelinho", coverImage: "4"),
        Song(nome: "Flow Espacial", artista: "Matue", coverImage: "6"),
    ]
    
    let backgroundGradient = LinearGradient(
        colors: [Color.purple, Color.black],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        ZStack{
            
            backgroundGradient
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    Image("curtida")
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                        .padding()
                    Text("Musicas curtidas")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.trailing,150)
                    VStack{
                        ForEach(songs) { song in
                            HStack{
                                Image(song.coverImage)
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text(song.nome)
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing,30)
                                        .lineLimit(1)
                                      
                                        .truncationMode(.head)
                                    Text(song.artista)
                                        .font(.subheadline)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing,30)
                                        .lineLimit(1)
                                        .truncationMode(.middle)
                                }
                               
                            }
                            .padding(.trailing,220)
                        }
                        Text("Sugeridos")
                            .font(.title)
                            .padding(.trailing, 230)
                            .foregroundColor(Color.white)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(rec) { song in
                                    VStack{
                                        Image(song.coverImage)
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                            .cornerRadius(10)
                                        Text(song.nome)
                                            .font(.headline)
                                            .foregroundColor(Color.white)
                                        Text(song.artista)
                                            .font(.subheadline)
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                        }
                    }
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
