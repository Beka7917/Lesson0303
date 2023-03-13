//
//  TAbleView.swift
//  Lesson0303
//

//

import Foundation
import UIKit

class TableViewViewContrller: UIViewController{
    private var contasts: [String] = []
   

    
    
    @IBOutlet weak var MovieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MovieTableView.dataSource = self
        MovieTableView.delegate = self
        initData()
        
    }
    private func initData(){
        contasts = ["Aidai", "Talant","Alym","Daniel","Radik","Adilet","Sultan"]
    }
   
    
}


extension TableViewViewContrller:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contasts.count
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contasts[indexPath.row]
        cell.imageView?.image = UIImage(systemName: "heart")
        cell.detailTextLabel?.text = "0501301203"
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Contasts: \(contasts[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

