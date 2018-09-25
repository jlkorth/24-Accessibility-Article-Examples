//
//  AccessibleSwitchView.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/19/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class AccessibleSwitchView: SwitchView {
    @IBOutlet weak var a11ySwitch: UISwitch!
    
    override var isAccessibilityElement: Bool {
        get { return true }
        set {}
    }
    
    // A11yValue has to be a 0 or 1, otherwise VoiceOver does not share this info at all
    override var accessibilityValue: String? {
        get { return a11ySwitch.isOn ? "1" : "0" }
        set {}
    }
    
    override var accessibilityLabel: String? {
        get { return switchLabel.text }
        set {}
    }
    
    override var accessibilityTraits: UIAccessibilityTraits {
        get { return a11ySwitch.accessibilityTraits }
        set {}
    }
    
    override func accessibilityActivate() -> Bool {
        a11ySwitch.setOn(!a11ySwitch.isOn, animated: true)
        a11ySwitch.sendActions(for: .valueChanged)
        
        return true
    }
}
