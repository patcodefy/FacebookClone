//
//  SearchBarCard.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import SwiftUI

struct SearchBarCard: View {

    @State var searchQuery = ""
    
    var body: some View {
        TextField("Search...", text: $searchQuery)
            .padding(10)
            .background(Color(.systemGray5))
            .cornerRadius(10)
            .padding(.horizontal, 20)
    }
}

