//
//  Comment.swift
//  SegmentSorting
//
//  Created by Marc Aupont on 12/21/19.
//  Copyright © 2019 Marc Aupont. All rights reserved.
//

import Foundation

struct Comment {
    
    let id: Int
    let postId: Int
    let name: String
    let email: String
    let body: String
    
    static func example() -> Comment {
        return Comment(id: 1, postId: 1, name: "Test Comment", email: "test@test.com", body: "This is a random body of a comment with nothing but jsut blah blah blah text")
    }
}

extension Comment: Codable, Identifiable {}
