//
//  ViewController.swift
//  SwiftyPersianDatePicker
//
//  Created by Reza Khalafi on 6/13/18.
//  Copyright © 2018 Reza Khalafi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var submitButton: UIButton!
    let identifierString = "fa_IR"
    let calendarIdentifierString = "persian"
    let customFormatString = "dd LLLL yy"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.datePickerMode = .date
        datePicker.locale = NSLocale.init(localeIdentifier: identifierString) as Locale
        datePicker.calendar = NSCalendar(calendarIdentifier: .persian)! as Calendar
        
        submitButton.addTarget(self, action: #selector(submitButtonClicked), for: .touchUpInside)
        submitButton.setTitle("Get date", for: .normal)
        
    }

    
    //MARK:Buttons
    @objc func submitButtonClicked(sender:UIButton) {
        
        let f = DateFormatter()
        f.locale = NSLocale.init(localeIdentifier: identifierString) as Locale?
        f.calendar = NSCalendar.init(calendarIdentifier: NSCalendar.Identifier(rawValue: calendarIdentifierString)) as Calendar?
        f.dateFormat = customFormatString
        let persianDateTime = f.string(from: datePicker.date)
        
        print("persianDateTime is: \(persianDateTime)")
        
        
    }
    


}//class

