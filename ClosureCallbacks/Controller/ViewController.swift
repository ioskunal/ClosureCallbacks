//
//  ViewController.swift
//  ClosureCallbacks
//
//  Created by Kunal Gupta on 28/02/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- OUTLETS
    
    @IBOutlet weak var animalsTableView: UITableView!
    
    //MARK:- VARIABLES
    
    let animals: [Animal] = Animal.getAnimals()
    
    //MARK:- PREDEFINED
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialise()
    }
    
    //MARK:- SELF MADE
    
    func initialise() {
        animalsTableView.delegate = self
        animalsTableView.dataSource = self
        animalsTableView.rowHeight = 72
    }
    
    func noiseTapped(_ animal: Animal) -> Void {
        Alert.show(title: animal.emoji ?? "", message: animal.sound ?? "", view: self)
    }
}

//MARK:- EXTENSION

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell") as! AnimalCell
        cell.configureCell(animals[indexPath.row])
        cell.didTapNoise = noiseTapped
        return cell
    }
}
