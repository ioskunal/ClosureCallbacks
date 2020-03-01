//
//  Alert.swift
//  ClosureCallbacks
//
//  Created by Kunal Gupta on 01/03/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

class Alert {
    
    static func show(title: String, message: String, view: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        view.present(alert, animated: true, completion: nil)
    }
}
