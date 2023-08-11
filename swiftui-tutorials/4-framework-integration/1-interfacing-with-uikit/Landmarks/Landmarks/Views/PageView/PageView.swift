//
//  PageView.swift
//  Landmarks
//
//  Created by Lucas Ferreira Machado on 10/08/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]

    @State private var currentPage = 0

    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static let cards = ModelData().features.map { FeatureCard(landmark: $0)
    }
    static var previews: some View {
        PageView(pages: cards)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
