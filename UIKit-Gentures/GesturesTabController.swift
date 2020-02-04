//
//  GesturesTabController.swift
//  UIKit-Gentures
//
//  Created by Amy Alsaydi on 2/3/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    private lazy var TapGestureVC: TapGestureController = {
        
        // THIS IS A PROPERTY INITALIZER! 
        // we need the story board instance
        //get instance form story board
        
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError("could not downcast to TapGestureController()")
        }
        return vc
        
    }()

    override func viewDidLoad() {
        viewControllers = [TapGestureVC, SwipeGestureController()]
    }
}
