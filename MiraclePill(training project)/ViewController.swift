//
//  ViewController.swift
//  MiraclePill(training project)
//
//  Created by AlexanderN on 23.08.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    

    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    
    @IBOutlet weak var imageMiraclePill: UIImageView!
    @IBOutlet weak var labelMiraclePills: UILabel!
    @IBOutlet weak var label150: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet weak var textFieldFullName: UITextField!
    @IBOutlet weak var labelStreetAdress: UILabel!
    @IBOutlet weak var textFieldStreetAdress: UITextField!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var textFieldCity: UITextField!
    @IBOutlet weak var labelState: UILabel!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var textFieldCountry: UITextField!
    @IBOutlet weak var labelZipCode: UILabel!
    @IBOutlet weak var textFieldZipCode: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var imageSuccess: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    //labelZipCode.isHidden = true ???
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Clorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPresed(_ sender: Any) {
        statePicker.isHidden = false
        labelCountry.isHidden = true
        textFieldCountry.isHidden = true
        labelZipCode.isHidden = true
        textFieldZipCode.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        labelCountry.isHidden = false
        textFieldCountry.isHidden = false
        labelZipCode.isHidden = false
        textFieldZipCode.isHidden = false
        stateButton.setTitleColor(UIColor.red, for: UIControlState.normal)
    }
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        imageMiraclePill.isHidden = true
        labelMiraclePills.isHidden = true
        label150.isHidden = true
        divider.isHidden = true
        labelFullName.isHidden = true
        textFieldFullName.isHidden = true
        labelStreetAdress.isHidden = true
        textFieldStreetAdress.isHidden = true
        labelCity.isHidden = true
        textFieldCity.isHidden = true
        labelState.isHidden = true
        labelCountry.isHidden = true
        textFieldCountry.isHidden = true
        labelZipCode.isHidden = true
        textFieldZipCode.isHidden = true
        buyNowButton.isHidden = true
        stateButton.isHidden = true
        imageSuccess.isHidden = false
        backButton.isHidden = false
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        imageMiraclePill.isHidden = !true
        labelMiraclePills.isHidden = !true
        label150.isHidden = !true
        divider.isHidden = !true
        labelFullName.isHidden = !true
        textFieldFullName.isHidden = !true
        labelStreetAdress.isHidden = !true
        textFieldStreetAdress.isHidden = !true
        labelCity.isHidden = !true
        textFieldCity.isHidden = !true
        labelState.isHidden = !true
        labelCountry.isHidden = !true
        textFieldCountry.isHidden = !true
        labelZipCode.isHidden = !true
        textFieldZipCode.isHidden = !true
        buyNowButton.isHidden = !true
        stateButton.isHidden = !true
        imageSuccess.isHidden = !false
        backButton.isHidden = !false
    }
    
}

