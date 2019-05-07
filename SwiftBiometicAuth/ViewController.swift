//
//  ViewController.swift
//  SwiftBiometicAuth
//
//  Created by Preuttipan Janpen on 7/5/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authObject = LAContext()
        var authError:NSError?
        
        //MARK: remove user passcode from auth
        authObject.localizedFallbackTitle = ""
        
        //MARK: Check biometic auth is available
        authObject.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError)
        
        
        if authError != nil {
            print("Authentication not available")
        } else {
            //MARK: Auth is available
            authObject.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Access to app with your finger.") { (complete, error) in
                if error != nil {
                    //MARK: User tab cancel
                    print("Error Message: " + error!.localizedDescription)
                } else {
                    if complete == true {
                        print("Auth Success")
                        let firstView = SecretViewController(nibName: nil, bundle: nil)
                        self.present(firstView, animated: true, completion: nil)
                    } else {
                        print("Auth False")
                    }
                }
            }
        }
    }
}
