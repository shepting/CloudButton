//
//  FirstViewController.swift
//  CloudButtonApp
//
//  Created by Steven Hepting on 2/23/16.
//  Copyright © 2016 Hepting. All rights reserved.
//

import UIKit
import AWSCognito
import FBSDKLoginKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the Cognito Sync client
        let syncClient = AWSCognito.defaultCognito()

        // Create a record in a dataset and synchronize with the server
        var dataset = syncClient.openOrCreateDataset("myDataset")
        dataset.setString("myValue", forKey:"myKey")
        dataset.synchronize().continueWithBlock {(task: AWSTask!) -> AnyObject! in
            // Your handler code here
            return nil
            
        }

        let loginButton = FBSDKLoginButton()
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

