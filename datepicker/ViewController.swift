//
//  ViewController.swift
//  datepicker
//
//  Created by dit05 on 2019. 4. 17..
//  Copyright © 2019년 dit05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outLabel: UILabel!
    @IBOutlet var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        // 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
    }
    @IBAction func valueC(_ sender: UIDatePicker) {
        print(myDatePicker.date)
        let d = myDatePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE a"
        outLabel.text = formatter.string(from: d)
    }
    

}

