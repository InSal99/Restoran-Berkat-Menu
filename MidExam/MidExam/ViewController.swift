//
//  ViewController.swift
//  MidExam
//
//  Created by prk on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var menus : [Menu] = [
        Menu(image: "menu1", title: "Appetiser Menu"),
        Menu(image: "menu2", title: "Main Menu"),
        Menu(image: "menu3", title: "Dessert Menu")
    ]
    var judul : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! MenuViewController

        if(segue.identifier == "segueMenu1") {
//            let destination = segue.destination as! MenuViewController
            destination.menu = menus[0]
        } else if(segue.identifier == "segueMenu2") {
//            let destination = segue.destination as! MenuViewController
            destination.menu = menus[1]
        } else if(segue.identifier == "segueMenu3") {
//            let destination = segue.destination as! MenuViewController
            destination.menu = menus[2]
        }
    }

}

