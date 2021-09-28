//
//  TCQLabel.swift
//  ThemeSupport1
//
//  Created by Sahana B on 27/09/21.
//

import UIKit

class TCQLabel: UITableViewCell {

    @IBOutlet weak var labelTheme: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        labelThemeHandler()
        NotificationCenter.default.addObserver(self, selector: #selector(self.changeTheme), name: NSNotification.Name(rawValue: "OnThemeChange"), object: nil)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @objc func changeTheme(notif: NSNotification)
    
    {
        labelThemeHandler()
     
 
    }
    func labelThemeHandler() {
        self.backgroundColor = Theme.present.background
        labelTheme.backgroundColor = Theme.present.labelColor
        labelTheme.textColor = Theme.present.textColor
    }
}
