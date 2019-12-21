//
//  CommentRow.swift
//  SegmentSorting
//
//  Created by Marc Aupont on 12/21/19.
//  Copyright © 2019 Marc Aupont. All rights reserved.
//

import SwiftUI

struct CommentRow: View {
    
    var comment: Comment
    
    var body: some View {
        VStack {
            HStack {
                Text("PostId:")
                    .fontWeight(.semibold)
                    .padding(.trailing, 10.0)
                Text("\(comment.postId)")
                Spacer()
            }.padding(.bottom, 5)
            
            HStack {
                Text("Name:")
                    .fontWeight(.semibold)
                    .padding(.trailing, 10.0)
                Text(comment.name)
                Spacer()
            }.padding(.bottom, 5)
            
            HStack {
                Text("Email:")
                    .fontWeight(.semibold)
                    .padding(.trailing, 10.0)
                Text(comment.email)
                Spacer()
            }.padding(.bottom, 5)
            
            HStack {
                Text("Body:")
                    .fontWeight(.semibold)
                    .padding(.trailing, 10.0)
                Text(comment.body)
                Spacer()
            }.padding(.bottom, 5)
            
        }.padding()
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow(comment: Comment.example())
    }
}
