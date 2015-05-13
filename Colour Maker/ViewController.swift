//
//  ViewController.swift
//  Colour Maker
//
//  Created by Jon Gordon on 12/05/2015.
//  Copyright (c) 2015 JonGor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        redControl.on = false
        greenControl.on = false
        blueControl.on = false
    }

    @IBAction func changeColorComponent(Sender: AnyObject) {

        let r: CGFloat = self.redControl.on ? 1 : 0
        let g: CGFloat = self.greenControl.on ? 1 : 0
        let b: CGFloat = self.blueControl.on ? 1 : 0

        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

