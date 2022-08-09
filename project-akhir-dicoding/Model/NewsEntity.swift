//
//  NewsEntity.swift
//  project-akhir-dicoding
//
//  Created by mbahgojol on 07/08/22.
//

import Foundation

struct NewsEntity: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let urlToImage: String
    let content: String
}
