//
//  ViewController.swift
//  Pandemica
//
//  Created by Enzhe Lu on 6/10/19.
//  Copyright © 2019 Enzhe Lu. All rights reserved.
//
import Foundation
import UIKit

let DiseaseName = ["Fever","Diarrhea","Fatigue","Muscle aches","Coughing"]

class SecondPage: UIViewController {
    
    @IBOutlet weak var disease2: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.
        disease2.dataSource = self
        disease2.delegate = self
    }
    
}

extension SecondPage: UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DiseaseName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return DiseaseName[row]
    }
}

