//
//  Slider.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/18/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class SliderView: UIView {
    @IBOutlet weak var valueLabel: UILabel!

    @IBAction func updateValueLabel(sender: UISlider) {
        valueLabel.text = "\(Int(sender.value))%"
    }
}
