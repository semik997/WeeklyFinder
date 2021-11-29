//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Семен Колесников on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var montfTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = dateTF.text, let mounth = montfTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(mounth)
        dateComponents.year = Int(year)
        
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_Ru")
        dateFormater.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let weekDay = dateFormater.string(from: date)
        let capitalizeWeekday = weekDay.capitalized
        
        resultLable.text = capitalizeWeekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

