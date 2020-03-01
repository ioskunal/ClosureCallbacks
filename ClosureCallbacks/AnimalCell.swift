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

    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 4
    }

    //MARK:- ACTION BUTTON
    
    @IBAction func noiseButtonPressed(_ sender: Any) {
        
    }
    

}