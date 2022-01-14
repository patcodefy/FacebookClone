//
//  FBPostCard.swift
//  FacebookClone
//
//  Created by pat on 1/13/22.
//

import SwiftUI

struct FBPostCard: View {

    // MARK: - Properties

    let userName: String
    let postText: String
    let profileImage: String
    let timeElapsed: String

    @State var isLiked = false

    // MARK: - Card View
    
    var body: some View {
        VStack {

            // User Profile Section
            HStack {

                // User profile image
                Image(profileImage)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)

                VStack {

                    // User name
                    HStack {
                        Text(userName)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }

                    // Time elapsed
                    HStack {
                        Text(timeElapsed)
                        Spacer()
                    }
                }
                Spacer()
            }

            // Post Content Section
            HStack {

                // Text in post
                Text(postText)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }

            // Like/Comment/Share section
            HStack {
                Button {
                    isLiked = !isLiked
                } label: {
                    Text(isLiked ? "Unlike" : "Like")
                }
                Spacer()

                Button {

                } label: {
                    Text("Comment")
                }
                Spacer()

                Button {

                } label: {
                    Text("Share")
                }
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .padding([.leading, .trailing], 10)
    }
}
