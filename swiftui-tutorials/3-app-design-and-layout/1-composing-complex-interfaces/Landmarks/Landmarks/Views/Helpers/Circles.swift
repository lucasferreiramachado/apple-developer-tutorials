//
//  Circles.swift
//  Landmarks
//
//  Created by Lucas Ferreira Machado on 08/08/23.
//

import SwiftUI

struct Circles: View {
    var body: some View {
        VStack {
            ZStack {
                Circle().fill(.green)
                Circle().fill(.yellow).scaleEffect(0.8)
                Circle().fill(.orange).scaleEffect(0.6)
                Circle().fill(.red).scaleEffect(0.4)
            }
            .padding()

            HStack {
                Circle().fill(.green)
                Circle().fill(.yellow).scaleEffect(0.8)
                Circle().fill(.orange).scaleEffect(0.6)
                Circle().fill(.red).scaleEffect(0.4)
            }
            .padding()

            VStack {
                Circle().fill(.green)
                Circle().fill(.yellow).scaleEffect(0.8)
                Circle().fill(.orange).scaleEffect(0.6)
                Circle().fill(.red).scaleEffect(0.4)
            }
            .padding()
        }
        .padding()
    }
}

struct Circles_Previews: PreviewProvider {
    static var previews: some View {
        Circles()
    }
}
