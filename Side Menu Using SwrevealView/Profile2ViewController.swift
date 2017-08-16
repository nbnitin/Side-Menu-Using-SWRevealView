//
//  Profile2ViewController.swift
//  Side Menu Using SwrevealView
//
//  Created by Nitin Bhatia on 16/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class Profile2ViewController: UIViewController {

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btnMenu.target = self.revealViewController()
        btnMenu.action = #selector((SWRevealViewController.revealToggle) as (SWRevealViewController) -> (Void) -> Void) // Swift 3 fix
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        setupMenuGestureRecognizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
