//
//  SubMenuDetailViewController.swift
//  MidExam
//
//  Created by prk on 19/11/22.
//

import UIKit

class SubMenuDetailViewController: UIViewController {
    
    @IBOutlet weak var subMenuDetailImageView: UIImageView!
    @IBOutlet weak var subMenuDetailPriceLabel: UILabel!
    
    var subMenu : SubMenu?
    
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        subMenuDetailImageView.image = UIImage(named : subMenu!.image)
        subMenuDetailPriceLabel.text = "Rp. \(subMenu!.price),00"
    }
    
    @IBAction func subMenuBuyButton(_ sender: Any) {
        SubMenuViewController.checkoutProducts.append(SubMenu(image: subMenu!.image, price: subMenu!.price))
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
