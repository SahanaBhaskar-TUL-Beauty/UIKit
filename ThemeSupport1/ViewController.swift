//
//  ViewController.swift
//  ThemeSupport1
//
//  Created by Sahana B on 22/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var myTableView: UITableView!
  
    override func viewDidLoad() {
       
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.changeTheme), name: NSNotification.Name(rawValue: "OnThemeChange"), object: nil)
       
        view.backgroundColor = Theme.present.background
        myTableView.register( UINib(nibName: "TCQButton", bundle: nil) , forCellReuseIdentifier: "TCQButton")
        myTableView.register( UINib(nibName: "TCQLabel", bundle: nil) , forCellReuseIdentifier: "TCQLabel")
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.dataSource = self
        myTableView.delegate = self
        self.myTableView.separatorColor = .white
        self.myTableView.backgroundColor = Theme.present.background
        self.view.addSubview(myTableView)
        
        // Do any additional setup after loading the view.
    }
    
    


}

extension ViewController :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TCQButton",for: indexPath) as! TCQButton
            
           return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TCQLabel",for: indexPath) as! TCQLabel
        
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    @objc func changeTheme(notif: NSNotification)
    
    {
        myTableView.reloadData()
        self.myTableView.backgroundColor = Theme.present.background
        view.backgroundColor = Theme.present.background

    }
    
}

