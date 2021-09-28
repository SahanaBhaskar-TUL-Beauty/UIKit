//
//  DeveloperSettingsViewController.swift
//  ThemeSupport1
//
//  Created by Sahana B on 22/09/21.
//

import UIKit

class DeveloperSettingsViewController : UIViewController {
    
    
    @IBOutlet weak var switchTheme: UISwitch!
    
    @IBAction func themechanged(_ sender: UISwitch) {
        if sender.isOn{
            Theme.present = LightTheme()
            Theme.mode = "Light"
        }
        else{
            
            Theme.present = DarkTheme()
            Theme.mode = "Dark"
        }

        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "OnThemeChange"), object: nil)
        applyTheme()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Theme.mode == "Light"{
            switchTheme.isOn = true
        }
        else{
            switchTheme.isOn = false
        }
        applyTheme()
    }
    
    private func applyTheme()
    
    {
        
        view.backgroundColor = Theme.present.background
        
    }
    
}
