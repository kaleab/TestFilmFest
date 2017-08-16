//
//  ViewController.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/16/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import UIKit
import ChameleonFramework


class MainViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 178/255, green: 178/255, blue: 122/255, alpha: 1)
        
        self.view.backgroundColor = GradientColor(.radial, frame: self.view.frame, colors:[UIColor.flatSkyBlue(), UIColor.flatNavyBlue()])
        
        
    }

    
}

