//
//  ViewController.swift
//  Lesson0303
//
//  Created by Бектур Кадыркулов on 11/3/23.
//

import UIKit

class ViewController: UIViewController {
    var nameValue:String?
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


}
    private func isTextFieldFilled() -> Bool {
        
        return !(TextField?.text?.isEmpty ?? true)
    }
    @IBAction func GotoNextPage(_ sender: Any) {
        if isTextFieldFilled(){
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewVIewContrller")as!
            TableViewViewContrller
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            TextField.layer.borderWidth = 3
        }
    }
    
}

///homework
