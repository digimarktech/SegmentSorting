//
//  DataFetcher.swift
//  SegmentSorting
//
//  Created by Marc Aupont on 12/21/19.
//  Copyright © 2019 Marc Aupont. All rights reserved.
//

import Foundation

class DataFetcher: ObservableObject {
    
    @Published var comments = [Comment]()
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/comments")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            do {
                
                guard let data = data else {
                    print("No data to return")
                    return
                }
                let downloadedComments = try JSONDecoder().decode([Comment].self, from: data)
                DispatchQueue.main.async {
                    self.comments = downloadedComments
                }
                
            } catch {
                print("Error: \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
}
