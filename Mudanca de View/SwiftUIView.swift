//
//  SwiftUIView.swift
//  Aula_3
//
//  Created by Student22 on 05/09/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    struct Song: Identifiable {
        let id = UUID()
        let title: String
        let artist: String
        let coverImage: String
    }
    let songs: [Song] = [
        Song(title: "Song 1", artist: "Artist 1", coverImage: "cover1"),
        Song(title: "Song 2", artist: "Artist 2", coverImage: "cover2"),
        // Adicione mais músicas conforme necessário
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(songs) { song in
                    NavigationLink(destination: Text("Detalhes da Música")) {
                        HStack {
                            Image(song.coverImage)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(song.title)
                                    .font(.headline)
                                Text(song.artist)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Sua Playlist")
        }
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
