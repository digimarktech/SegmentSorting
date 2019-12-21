//
//  ContentView.swift
//  SegmentSorting
//
//  Created by Marc Aupont on 12/21/19.
//  Copyright © 2019 Marc Aupont. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetcher = DataFetcher()
    @ObservedObject var store = SelectionStore()
    
    @State var currentIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $store.selection, label: Text("Filters")) {
                    ForEach(SortTitles.allCases, id: \.self) { title in
                        Text(title.capitalizedValue).tag(title)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                List(fetcher.comments.sorted(by: { (comment1, comment2) in
                    switch store.selection {
                    case .name:
                        return comment1.name < comment2.name
                    case .postId:
                        return comment1.postId < comment2.postId
                    case .email:
                        return comment1.email < comment2.email
                    case .body:
                        return comment1.body < comment2.body
                    }
                })) { comment in
                    CommentRow(comment: comment)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
