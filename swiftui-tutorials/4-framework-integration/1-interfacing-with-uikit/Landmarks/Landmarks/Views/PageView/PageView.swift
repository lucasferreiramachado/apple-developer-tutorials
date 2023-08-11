//
//  PageView.swift
//  Landmarks
//
//  Created by Lucas Ferreira Machado on 10/08/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]

    var body: some View {
        PageViewController(pages: pages)
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
