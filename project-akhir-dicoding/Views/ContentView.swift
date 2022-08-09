 //
//  ContentView.swift
//  project-akhir-dicoding
//
//  Created by mbahgojol on 06/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var results = [Article]()
    @StateObject var viewModel = NewsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.items,id: \.title) { item in
                NavigationLink(destination: DetailNews(article: item)) {
                    HStack {
                        AsyncImage(url: URL(string: item.urlToImage)) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 44, height: 44)
                            .background(Color.gray)
                            .clipShape(Rectangle())
                        Text(item.title)
                    }
                }
            }.onAppear(perform: viewModel.fetchItems)
                .navigationTitle("News")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    NavigationLink(destination: AboutMe(),label: {
                        Text("About Me")
                    })
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
