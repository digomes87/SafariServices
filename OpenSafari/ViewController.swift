//
//  ViewController.swift
//  OpenSafari
//
//  Created by Diego Gomes on 27/02/2016.
//  Copyright © 2016 Nylon. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSafari(sender: AnyObject) {
        
        let sfc = SFSafariViewController(URL: NSURL(string: "https://twitter.com/nylondev")!)
        
        sfc.delegate = self
        presentViewController(sfc,animated: true, completion: nil)
    }
    
    //function call when safari 
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

}

