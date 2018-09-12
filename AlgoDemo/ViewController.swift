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

        // Do any additional setup after loading the view.
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
        let amaze = Node(value: "Amaze")
        let mustang = Node(value: "Mustang")
        
        toyota.add(child: etios)
        honda.add(child: civic)
        honda.add(child: brio)
        honda.add(child: amaze)
        ford.add(child: mustang)
    }
}
