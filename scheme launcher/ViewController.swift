//
//  ViewController.swift
//  scheme launcher
//
//  Created by Udi Lumnitz on 13/02/2018.
//  Copyright © 2018 Udi Lumnitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let url: String = "<put-your-url-here>"
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.button.setTitle("click to open: \(self.url)", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func launch(_ sender: Any) {
            UIApplication.shared.open(URL(string: self.url)!, options: ["action":"play"], completionHandler: { (Bool) in
                print("opened url: \(self.url)")
            })
    }
}

