//
//  MenuViewController.swift
//  MidExam
//
//  Created by prk on 19/11/22.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuOutletButton: UIButton!
    var index : Int = 0
    var menu : Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuImageView.image = UIImage(named : menu!.image)
        menuOutletButton.setTitle(menu!.title, for: .normal)
    }
    
    @IBAction func menuButton(_ sender: Any) {
//        let parent = self.parent as! ViewController
//        parent.title = menu!.title
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == ""){
            let destination =  segue.destination as! SubMenuViewController
            destination.menuType = menu!.title
//        }
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
