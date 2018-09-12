//
//  Node.swift
//  AlgoDemo
//
//  Created by Shubham Kapoor on 12/09/18.
//  Copyright © 2018 Shubham Kapoor. All rights reserved.
//

import UIKit

class Node {
    
    var value: String
    var children: [Node] = []
    weak var parent: Node?
    
    init(value: String) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}
