//
//  HomeViewController.swift
//  froot-loops
//
//  Created by Rageeb Mahtab on 4/17/19.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var homeView: UIView!
    @IBOutlet weak var tableMapSegmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSwitchSegment(_ sender: Any) {
        let getIndex = tableMapSegmentControl.selectedSegmentIndex
        
        switch getIndex {
        case 0:
            self.homeView.backgroundColor = UIColor.red
        case 1:
            self.homeView.backgroundColor = UIColor.blue
        default:
            self.homeView.backgroundColor = UIColor.red
        }
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
