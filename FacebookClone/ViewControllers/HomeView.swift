//
//  HomeView.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import SwiftUI

struct HomeView: View {

    // MARK: - Constants
    
    private enum Constants {
        static let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    }

    // MARK: - Properties

    var viewModel = HomeViewModel()

    // MARK: - View

    var body: some View {
        VStack {

            // Page title

            HStack {
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(Constants.facebookBlue))

                Spacer()

                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()

            // Search bar

            SearchBarCard()

            // Feed section

            ZStack {
                Color(.secondarySystemBackground)

                ScrollView(.vertical) {

                    // Stories Section

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.stories, id: \.self) { name in
                                StoriesCard(name: name)
                            }
                        }
                    }
                    .padding([.leading, .top, .bottom], 10)

                    // Posts section

                    ForEach(viewModel.posts, id: \.self) { post in
                        FBPostCard(
                            userName: post.userName,
                            postText: post.text,
                            profileImage: post.profileImage,
                            timeElapsed: post.timeElapsed
                        )
                    }
                }
            }

            Spacer()
        }
    }
}





