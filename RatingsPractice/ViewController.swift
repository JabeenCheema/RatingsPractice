//
//  ViewController.swift
//  RatingsPractice
//
//  Created by Jabeen's MacBook on 4/4/19.
//  Copyright © 2019 Jabeen's MacBook. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ratingView: CosmosView!
    
    var userRating =  2.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ratingView.settings.fillMode = .precise
        ratingView.rating = userRating //sets the rating of the user from storyboard
        
        ratingView.didFinishTouchingCosmos =  { captureRating in
            self.userRating = captureRating
            print("userRating: \(self.userRating)")
        } // captures and updates the users rating 
    }
    
    
}




