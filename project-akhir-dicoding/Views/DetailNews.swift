//
//  AboutMe.swift
//  project-akhir-dicoding
//
//  Created by mbahgojol on 06/08/22.
//

import Foundation
import SwiftUI

struct DetailNews: View {
    
    let article:Article
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: article.urlToImage)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .background(Color.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: 300)
                    .clipShape(Rectangle())
                
                Text(article.title)
                    .font(.title)
                    .padding(.leading)
                Text(article.content)
                    .font(.body)
                    .padding(.leading)
                Spacer()
            }.navigationTitle("Description")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailNews_Previews: PreviewProvider {
    static var previews: some View {
        DetailNews(article: Article(
            title: "Title",
            urlToImage: "",
            content: "Description"))
    }
}
