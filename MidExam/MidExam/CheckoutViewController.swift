//
//  CheckoutViewController.swift
//  MidExam
//
//  Created by prk on 22/11/22.
//

import UIKit

class CheckoutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SubMenuViewController.checkoutProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.checkoutPriceLabel.text = "\(SubMenuViewController.checkoutProducts[indexPath.row].price)"
        cell.checkoutImageView.image = UIImage(named: SubMenuViewController.checkoutProducts[indexPath.row].image)
        return cell
    }

    @IBOutlet weak var tableViewCheckout: UITableView!
    @IBOutlet weak var totalPriceLable: UILabel!

    @IBAction func confirmButton(_ sender: Any) {
        SubMenuViewController.checkoutProducts.removeAll(keepingCapacity: false)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(tableView)
        tableViewCheckout.dataSource = self
        tableViewCheckout.delegate = self
        
        var totalPrice : Int = 0
        for i in 1...SubMenuViewController.checkoutProducts.count {
            totalPrice += SubMenuViewController.checkoutProducts[i - 1].price
        }
        totalPriceLable.text = "Total Price : Rp. \(totalPrice),00"
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
