//
//  ViewController.swift
//  TravelAid
//
//  Created by Adam Viðarsson on 07/10/2017.
//  Copyright © 2017 Adam Viðarsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://haapa.adamvidarsson.com")
        
        self.navigationController?.isNavigationBarHidden = false // or true
        
        if let unwrappedURL = url {
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                if error == nil {
                    self.webView.loadRequest(request)
                } else {
                    print("Error happened.")
                }

            }
            
            task.resume()
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

