//
//  HomeViewModel.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import Foundation

class HomeViewModel: HomeViewModellable {
    var stories = ["story1", "story2", "story3", "story1", "story2", "story3"]

    var posts = [
        Post(
            userName: "Mark Zuckerberg",
            profileImage: "person1",
            text: "Hey guys",
            timeElapsed: "12 minutes ago"
        ),

        Post(
            userName: "Pat Ira",
            profileImage: "person2",
            text: "Can't wait for the weekend",
            timeElapsed: "30 minutes ago"
        ),

        Post(
            userName: "Reb Umu",
            profileImage: "person3",
            text: "Thursdays always suck",
            timeElapsed: "1 hour ago"
        )
    ]

}
