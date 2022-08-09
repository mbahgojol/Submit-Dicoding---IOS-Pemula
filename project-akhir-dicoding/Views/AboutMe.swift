//
//  AboutMe.swift
//  project-akhir-dicoding
//
//  Created by mbahgojol on 06/08/22.
//

import Foundation
import SwiftUI

struct AboutMe: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("aboutme")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .leading)
                    .clipShape(Circle())
                Text("Ghozi Mahdi")
                    .font(.title)
                Spacer()
            }.navigationTitle("About Me")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
