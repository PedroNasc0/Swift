//
//  BPM.swift
//  I.O.T
//
//  Created by Student22 on 20/09/23.
//

import Foundation

struct Bpm: Codable, Identifiable{
    let id: UUID?
    let batimento: String
}

class ViewModel : ObservableObject {
   
    @Published var sensor : [Bpm] = []
    
    func fetch(){
        guard let url = URL(string:"http://127.0.0.1:1880/receber") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Bpm].self, from: data)
                
                DispatchQueue.main.async {
                    self?.sensor = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
