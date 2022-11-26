//
//  SubMenuViewController.swift
//  MidExam
//
//  Created by prk on 19/11/22.
//

import UIKit

class SubMenuViewController: UIViewController {
    
    var appetizer : [SubMenu] = [
        SubMenu(image: "appetiser1", price: 12000),
        SubMenu(image: "appetiser2", price: 15000),
        SubMenu(image: "appetiser3", price: 20000)
    ]
    
    var main : [SubMenu] = [
        SubMenu(image: "main1", price: 120000),
        SubMenu(image: "main2", price: 125000),
        SubMenu(image: "main3", price: 120000)
    ]
    
    var dessert : [SubMenu] = [
        SubMenu(image: "dessert1", price: 12000),
        SubMenu(image: "dessert2", price: 15000),
        SubMenu(image: "dessert3", price: 20000)
    ]
    static var checkoutProducts: Array<SubMenu> = Array()
    
    var menuType = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SubMenuDetailViewController
        if(menuType == "Appetiser Menu") {
            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = appetizer[0]
            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = appetizer[1]
            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = appetizer[2]
            }
        } else if(menuType == "Main Menu") {
            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = main[0]
            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = main[1]
            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = main[2]
            }
        } else if(menuType == "Dessert Menu") {
            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = dessert[0]
            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = dessert[1]
            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
                destination.subMenu = dessert[2]
            }
        
//        if(parent?.title == "Appetiser Menu") {
//            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = appetizer[0]
//            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = appetizer[1]
//            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = appetizer[2]
//            }
//        } else if(parent?.title == "Main Menu") {
//            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = main[0]
//            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = main[1]
//            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = main[2]
//            }
//        } else if(parent?.title == "Dessert Menu") {
//            if(segue.identifier == "segueDetailMenu1") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = dessert[0]
//            } else if(segue.identifier == "segueDetailMenu2") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = dessert[1]
//            } else if(segue.identifier == "segueDetailMenu3") {
//                let destination = segue.destination as! SubMenuDetailViewController
//                destination.subMenu = dessert[2]
//            }
        }
//        parent?.title = "Restoran Berkat Menu"
        
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
