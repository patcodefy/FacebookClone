//
//  StoriesCard.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import SwiftUI

struct StoriesCard: View {

    let name: String

    var body: some View {
        VStack {
            HStack(spacing: 3) {
                Image(name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 200, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(3)
                    .clipped()
            }
        }
    }
}
