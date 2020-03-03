//
//  AnimalCell.swift
//  ClosureCallbacks
//
//  Created by Kunal Gupta on 01/03/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {

    //MARK:- OUTLETS

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var noiseButton: UIButton!

    //MARK:- VARIABLES

    var didTapNoise: ((Animal) -> Void)?
    var animal: Animal?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.noiseButton.layer.cornerRadius = 4
    }

    func configureCell(_ animal: Animal) {
        self.animal = animal
        self.emojiLabel.text = animal.emoji
        self.animalNameLabel.text = animal.name
    }
    
    //MARK:- ACTION BUTTON
    
    @IBAction func noiseButtonPressed(_ sender: Any) {
        guard let unwrappedAnimal = animal else {return}
        didTapNoise?(unwrappedAnimal)
    }
    

}
