//
//  NewsControllers.swift
//  project-akhir-dicoding
//
//  Created by mbahgojol on 07/08/22.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var items: [Article] = []
    
    func fetchItems() {
        guard let url = URL(string:"https://newsapi.org/v2/everything?q=android") else {
            print("Your Api end point is Invalid")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("2d5db4757c2c4d559eb047fc035987a0", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data else{ return }
                    do{
                        let decodedData =  try JSONDecoder().decode(NewsEntity.self, from:data)
                        DispatchQueue.main.async {
                            self.items = decodedData.articles
                        }
                    }catch let error{
                        print("Error = ", error)
                    }
                }.resume()
    }
}
