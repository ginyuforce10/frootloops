//
//  MyEventsViewController.swift
//  froot-loops
//
//  Created by Rageeb Mahtab on 4/18/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class MyEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    
    
    let images = ["future1", "future2", "future3"]
    let images2 = ["upcoming event", "pastevent1", "pastevent2"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableView1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Events", for: indexPath) as! MyEventsCells
            cell.EventView.image = UIImage(named: images[indexPath.row])
            cell.backgroundColor = tableView.backgroundColor
            cell.contentView.backgroundColor = tableView.backgroundColor

            return cell
        }
        else if tableView == tableView2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Events2", for: indexPath) as! MyEventsCells
            
            cell.EventView.image = UIImage(named: images2[indexPath.row])
            
            cell.backgroundColor = tableView.backgroundColor
            cell.contentView.backgroundColor = tableView.backgroundColor
            
            return cell
        }
        
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100;//Choose your custom row height
    }

    

    @IBOutlet weak var profilePic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.cornerRadius = profilePic.frame.size.width / 2
        profilePic.clipsToBounds = true
        
        tableView1.dataSource = self
        tableView1.delegate = self

        
        tableView1.backgroundColor = .clear
        tableView2.backgroundColor = .clear
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    


}
