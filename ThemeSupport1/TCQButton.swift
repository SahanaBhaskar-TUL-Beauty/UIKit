//
//  TableViewCell.swift
//  ThemeSupport1
//
//  Created by Sahana B on 27/09/21.
//

import UIKit

class TCQButton: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        buttonThemeHandler()
    NotificationCenter.default.addObserver(self, selector: #selector(self.changeTheme), name: NSNotification.Name(rawValue: "OnThemeChange"), object: nil)
        
        // Initialization code
    }
    @IBOutlet weak var buttonTheme: UIButton!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @objc func changeTheme(notif: NSNotification)
    
    {
        buttonThemeHandler()
     
 
    }
    
    func buttonThemeHandler()
    {
        self.backgroundColor = Theme.present.background
        buttonTheme.backgroundColor = Theme.present.labelColor
        buttonTheme.setTitleColor(Theme.present.textColor, for: UIControl.State.normal )
        buttonTheme.layer.cornerRadius = 5
    }
    
}
