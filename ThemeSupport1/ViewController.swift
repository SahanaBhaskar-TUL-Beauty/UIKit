//
//  ViewController.swift
//  ThemeSupport1
//
//  Created by Sahana B on 22/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var myTableView: UITableView!
    private let  myView: UIView = {
        let view = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 100))
        view.backgroundColor = Theme.present.labelColor
        return view
        
        
    }()
    
    private let  myLabel: UILabel = {
        let label = UILabel()
        label.textColor = Theme.present.textColor
        label.text = " Hello"
        label.textAlignment = .center
        return label
        
        
    }()
    override func viewDidLoad() {
       
        super.viewDidLoad()
        myLabel.frame = myView.bounds
        
        //myView.addSubview(myLabel)
        //view.addSubview(myView)
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myTableView.reloadData()
        self.myTableView.backgroundColor = Theme.present.background
        view.backgroundColor = Theme.present.background
        myView.backgroundColor = Theme.present.labelColor
        myLabel.textColor = Theme.present.textColor
      
    }
    


}

extension ViewController :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TCQButton",for: indexPath) as! TCQButton
            cell.backgroundColor = Theme.present.background
            cell.buttonTheme.backgroundColor = Theme.present.labelColor
            cell.buttonTheme.setTitleColor(Theme.present.textColor, for: UIControl.State.normal )
            cell.buttonTheme.layer.cornerRadius = 5
           return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TCQLabel",for: indexPath) as! TCQLabel
            cell.backgroundColor = Theme.present.background
            cell.labelTheme.backgroundColor = Theme.present.labelColor
            cell.labelTheme.textColor = Theme.present.textColor
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
    
    
    
    
}

