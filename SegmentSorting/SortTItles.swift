//
//  SortTItles.swift
//  SegmentSorting
//
//  Created by Marc Aupont on 12/21/19.
//  Copyright © 2019 Marc Aupont. All rights reserved.
//

import Foundation

enum SortTitles: String, CaseIterable {
    
    case name
    case postId
    case email
    case body
    
    /// Returns the sort title capitalized.
    var capitalizedValue: String {
        return rawValue.capitalized
    }
}

/// A class that represents the selection options for Segmented control
final class SelectionStore: ObservableObject {
    
    /// The selected segment
    @Published var selection: SortTitles = .name {
        didSet {
            
        }
    }
}
