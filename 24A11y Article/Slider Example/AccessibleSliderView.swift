//
//  AccessibleSliderView.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/18/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class AccessibleSliderView: SliderView {
    
    let UPDATE_VALUE = Float(10)
    
    @IBOutlet weak var a11yLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override var isAccessibilityElement: Bool {
        get { return true }
        set {}
    }
    
    override var accessibilityLabel: String? {
        get { return a11yLabel.text }
        set {}
    }
    
    override var accessibilityTraits: UIAccessibilityTraits {
        get { return volumeSlider.accessibilityTraits }
        set {}
    }
    
    override var accessibilityValue: String? {
        get { return volumeSlider.accessibilityValue }
        set {}
    }
    
    override func accessibilityIncrement() {
        volumeSlider.value += UPDATE_VALUE
        volumeSlider.sendActions(for: .valueChanged)
    }
    
    override func accessibilityDecrement() {
        volumeSlider.value -= UPDATE_VALUE
        volumeSlider.sendActions(for: .valueChanged)
    }
}
