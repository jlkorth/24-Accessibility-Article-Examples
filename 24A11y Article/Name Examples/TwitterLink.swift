//
//  TwitterLink.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/24/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class TwitterLink: UIButton {
    @IBAction func openTwitter() {
        let twitterPagePath = "https://www.twitter.com/dequesystems"
        let twitterURL = URL(string: twitterPagePath)!
        
        UIApplication.shared.open(twitterURL, options: [:], completionHandler: nil)
    }
}
