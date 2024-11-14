//
//  Post.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/9/23.
//

import Foundation

public extension Post {
    
    static var preview: Post {
        Post(
            id: UUID().uuidString,
            title: "Elon Musk May Have Lost More Than a $55 Billion",
            body: "In this bonus Elon, Inc. episode, we take a long look at the scathing, 200-page ruling by a Delaware judge that could reshape Musk's empire.",
            link: URL(string: "https://www.wired.com/story/seagrass-humble-ocean-plant-worth-trillions/")!,
            categoryName: "racing",
            tags: CommunityTag.previewArray,
            userId: "DonaldTrump JoeBiden",
            communityId: "12345",
            creationDate: .now,
            approvedDate: .now,
            archivedDate: .now,
            upVoteCount: 5,
            downVoteCount: 27,
            commentCount: 55,
            score: 5 - 27
        )
    }
    
    static var previewArray: [Post] {
        var postArray: [Post] = []
        for _ in 0...25 {
            postArray.append(Post.preview)
        }
        return postArray
    }
}
