//
//  HomeViewModellable.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import Foundation

protocol HomeViewModellable {

    var stories: [String] { get }
    var posts: [Post] { get }
}
