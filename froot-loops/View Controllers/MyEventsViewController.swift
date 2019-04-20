//
//  MyEventsViewController.swift
//  froot-loops
//
//  Created by Rageeb Mahtab on 4/18/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class MyEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    let images = ["upcoming event", "pastevent1", "pastevent2"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Events", for: indexPath) as! MyEventsCells

        cell.EventView.image = UIImage(named: images[indexPath.row])
        
        cell.backgroundColor = tableView.backgroundColor
        cell.contentView.backgroundColor = tableView.backgroundColor

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 160;//Choose your custom row height
    }
    

    @IBOutlet weak var profilePic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.cornerRadius = profilePic.frame.size.width / 2
        profilePic.clipsToBounds = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
        super.viewDidLoad()
        tableView.backgroundColor = .clear
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
