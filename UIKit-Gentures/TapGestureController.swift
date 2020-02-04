//
//  TapGestureController.swift
//  UIKit-Gentures
//
//  Created by Amy Alsaydi on 2/3/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class TapGestureController: UIViewController {
    
    
    /*
     UITapGestureRecgnizer()
     long press
     rotation
     etc. 
     */

    @IBOutlet weak var heartImageView: UIImageView!
    
    // 1. configure a tab gesture
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self , action: #selector(didTap(_:)))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        // 2. add the gesture to the view - VERY IMPORTANT
        heartImageView.isUserInteractionEnabled = true
        heartImageView.addGestureRecognizer(tapGesture)
      
    }
    
    // 3. we need a selector (method) that gets ca;;ed when the guesture is triggered.
    
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        heartImageView.image = UIImage(systemName: "heart.fill")
    }

}


// gestures can be added to any view

// difference between a method and a selector ??
