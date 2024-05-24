//
//  ViewModel.swift
//  API's
//
//  Created by Student22 on 12/09/23.
//
import Foundation

struct ViewPiada: Codable, Identifiable{
    let error: Bool
    let category: String
    let type: String
    let setup: String
    let delivery: String
    let flags: Flag
    let safe: Bool
    let id: Int
    let lang: String
}

struct Flag: Codable{
    let nsfw: Bool
    let religious: Bool
    let political: Bool
    let racist: Bool
    let sexist: Bool
    let explicit: Bool
}
 


class ViewModel : ObservableObject {
   
    @Published var game : [ViewPiada] = []
    
    func fetch(){
        guard let url = URL(string:"https://v2.jokeapi.dev/joke/Any?lang=pt") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([ViewPiada].self, from: data)
                
                DispatchQueue.main.async {
                    self?.game = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

