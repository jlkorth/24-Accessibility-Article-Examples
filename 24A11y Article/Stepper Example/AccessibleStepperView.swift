//
//  AccessibleStepperView.swift
//  24A11y Article
//
//  Created by Jennifer Dailey on 9/18/18.
//  Copyright © 2018 Jennifer Dailey. All rights reserved.
//

import UIKit

class AccessibleStepperView: StepperView {
    
    @IBOutlet weak var a11yLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override var isAccessibilityElement: Bool {
        get { return true }
        set {}
    }
    
    override var accessibilityLabel: String? {
        get { return a11yLabel.text }
        set {}
    }
    
    override var accessibilityTraits: UIAccessibilityTraits {
        get { return UIAccessibilityTraits.adjustable }
        set {}
    }
    
    override var accessibilityValue: String? {
        get { return "\(Int(stepper.value))" }
        set {}
    }
    
    override func accessibilityIncrement() {
        stepper.value += 1
        stepper.sendActions(for: .valueChanged)
    }
    
    override func accessibilityDecrement() {
        stepper.value -= 1
        stepper.sendActions(for: .valueChanged)
    }
}
