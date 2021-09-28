//
//  DeveloperSettingsViewController.swift
//  ThemeSupport1
//
//  Created by Sahana B on 22/09/21.
//

import UIKit

class DeveloperSettingsViewController : UIViewController {
    @IBAction func themechanged(_ sender: UISwitch) {
        if sender.isOn{
            Theme.present = LightTheme()
        }
        else{
            
            Theme.present = DarkTheme()
        }
//        UserDefaults.standard.set(sender.isOn,forKey: "LightTheme")
        applyTheme()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTheme()
    }
    
    private func applyTheme()
    {
        view.backgroundColor = Theme.present.background
        
    }
    
}
