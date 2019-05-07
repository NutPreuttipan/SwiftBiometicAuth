//
//  SecretViewController.swift
//  SwiftBiometicAuth
//
//  Created by Preuttipan Janpen on 7/5/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        
        let label = UILabel(frame: CGRect(x: 10, y: view.frame.midY - 50, width: view.frame.maxX - 20, height: 100))
        label.text = "Hello This is First Screen"
        label.textColor = UIColor.black
        
        view.addSubview(label)
    }

}
