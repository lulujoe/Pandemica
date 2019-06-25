//
//  ViewController.swift
//  Pandemica
//
//  Created by Enzhe Lu on 6/10/19.
//  Copyright © 2019 Enzhe Lu. All rights reserved.
//
import Foundation
import UIKit

let diseaseName = ["Fever","Diarrhea","Fatigue","Muscle aches","Coughing"]

class ViewController: UIViewController, UISearchBarDelegate{

    @IBOutlet weak var disease2: UIPickerView!
    @IBOutlet weak var histroy: UISlider!
    @IBOutlet weak var map: UIImageView!
    
    @IBOutlet weak var search: UISearchBar!

    @IBAction func slideDidChange(_ sender: Any) {
        let value = self.histroy.value
        if value < 0.2 {
            self.map.image = UIImage(named: "1.1")
        }
        else if value < 0.4 {
            self.map.image = UIImage(named: "2.2")
        }
        else if value < 0.6 {
            self.map.image = UIImage(named: "3.3")
        }
        else if value < 0.8 {
            self.map.image = UIImage(named: "4.4")
        }
        else{
            self.map.image = UIImage(named: "5.5")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.xr
        disease2.dataSource = self
        disease2.delegate = self
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let text = search.text
        print("anything!")
        if text != nil {
            print(text!)
            performSegue(withIdentifier: "SecondPage", sender: self)
        }
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }

}

extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return diseaseName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return diseaseName[row]
    }
}

//extension ViewController: UISearchBarDelegate{
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchText == "" {
//
//        }
//    }
//
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        if let text = search.text {
//            print(text)
//        }
//    }
//
//
//
//}

