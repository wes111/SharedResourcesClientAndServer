//
//  CommentFetchRequest.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/11/24.
//

import Foundation

public enum CommentFetchRequest {
    case initialRootComments(postId: String)
    case rootComments(postId: String, afterCommentId: String)
    case initialChildComments(parentId: String)
    case childComments(parentId: String, afterCommentId: String)
}
