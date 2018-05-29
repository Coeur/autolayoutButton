//
//  ViewController.swift
//  buttonSelfSizing
//
//  Created by Antoine Cœur on 2018/5/29.
//  Copyright © 2018 Coeur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

}

/// https://stackoverflow.com/a/50575588/1033581
class AutoLayoutButton: UIButton {
    override var intrinsicContentSize: CGSize {
        return titleLabel!.sizeThatFits(CGSize(width: titleLabel!.preferredMaxLayoutWidth, height: .greatestFiniteMagnitude))
    }
    override func layoutSubviews() {
        titleLabel?.preferredMaxLayoutWidth = frame.size.width
        super.layoutSubviews()
    }
}
