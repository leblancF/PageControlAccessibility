//
//  ViewController.swift
//  PageControlTest
//
//  Created by François-Olivier Leblanc on 2019-01-15.
//  Copyright © 2019 Francois Olivier Leblanc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        label.text = "Test page control"
        label.numberOfLines = 3
        label.textColor = .black

        pageControl.numberOfPages = 3
        pageControl.currentPage = 1
        pageControl.isEnabled = false
        pageControl.isUserInteractionEnabled = false
        pageControl.accessibilityTraits = .none

        view.addSubview(label)
        view.addSubview(pageControl)

        let views: [String : Any] = ["label": label, "pageControl": pageControl]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[label]-[pageControl]|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[label]-15-|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[pageControl]-|", options: [], metrics: nil, views: views))

        view.setNeedsLayout()
    }
}

