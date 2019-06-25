//
//  ThirdPage.swift
//  Pandemica
//
//  Created by Enzhe Lu on 6/20/19.
//  Copyright © 2019 Enzhe Lu. All rights reserved.
//

import Foundation
import UIKit
import DLRadioButton

class ThirdPage: UIViewController {
    
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func gender(_ sender: Any) {
        image1.image = UIImage(named: "DIST1")
        image2.image = UIImage(named: "rela1")
    }
    @IBAction func Age(_ sender: Any) {
        image1.image = UIImage(named: "DIST2")
        image2.image = UIImage(named: "rela2")
    }
    @IBAction func Fatalities(_ sender: Any) {
        image1.image = UIImage(named: "DIST3")
        image2.image = UIImage(named: "rela3")
    }
    @IBAction func vaccinated(_ sender: Any) {
        image1.image = UIImage(named: "DIST4")
        image2.image = UIImage(named: "rela4")
    }
}
