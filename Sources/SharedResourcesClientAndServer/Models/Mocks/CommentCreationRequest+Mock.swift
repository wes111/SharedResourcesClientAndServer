//
//  CommentCreationRequest+Mock.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/13/24.
//

public extension CommentCreationRequest {
    static var preview: CommentCreationRequest {
        .init(parentId: "", postId: "", userId: "", content: "")
    }
}
