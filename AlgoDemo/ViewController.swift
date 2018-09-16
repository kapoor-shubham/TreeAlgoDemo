//
//  ViewController.swift
//  AlgoDemo
//
//  Created by Shubham Kapoor on 12/09/18.
//  Copyright © 2018 Shubham Kapoor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addNodeChilds()
    }
    
    func addNodeChilds() {
        let vehical = Node(value: "Vehical")
        
        let car = Node(value: "Car")
        let bike = Node(value: "Bike")
        vehical.add(child: car)
        vehical.add(child: bike)
        
        // CARS
        let toyota = Node(value: "Toyota")
        let honda = Node(value: "Honda")
        let ford = Node(value: "Ford")
        car.add(child: toyota)
        car.add(child: honda)
        car.add(child: ford)
        
        let etios = Node(value: "Etios")
        let civic = Node(value: "Civic")
        let brio = Node(value: "Brio")
        let amaze = Node(value: "Amaze")
        let mustang = Node(value: "Mustang")
        
        toyota.add(child: etios)
        honda.add(child: civic)
        honda.add(child: brio)
        honda.add(child: amaze)
        ford.add(child: mustang)
        
        // BIKES
        let hero = Node(value: "Hero")
        let ktm = Node(value: "KTM")
        let royalEnfild = Node(value: "Royal Enfild")
        bike.add(child: hero)
        bike.add(child: ktm)
        bike.add(child: royalEnfild)
        
        let cbr = Node(value: "CBR")
        let activa = Node(value: "Activa")
        let classic = Node(value: "Brio")
        let thunderBird = Node(value: "ThunderBird")
        
        hero.add(child: cbr)
        hero.add(child: activa)
        royalEnfild.add(child: classic)
        royalEnfild.add(child: thunderBird)
        
        print(vehical)
        
        print(vehical.search(value: "Hero")!)
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        var text = "\(value)"   //  We've declared a text variable. This will hold the entire string. For now, we've given it the current node's value.
        
        if !children.isEmpty {
            text += ": {" + children.map { $0.description }.joined(separator: ", ") + "} "  // This will add the children of children. To do so, we'll recursively append children's description, whilst adding some braces to give the string some context in regards to the structure of the children.
            
        /* Simple Syntax Apart from map that we can use */
//            if !children.isEmpty {
//                text += " {"
//                for child in children {
//                    if children.last?.value != child.value {
//                        text += child.description + ", "
//                    } else {
//                        text += child.description
//                    }
//                }
//                text += "} "
//            }
            
        }
        return text
    }
}

extension Node {
    func search(value: String) -> Node? {
        if value == self.value {
            return self
        }
        
        for child in children {
            if let childrenFound = child.search(value: value) {
                return childrenFound
            }
        }
        return nil
    }
}
