//
//  ViewController.swift
//  SimpleTableview
//
//  Created by COE-009 on 19/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
     let cellIdentifier = "Mycells"
     var techName = ["iOS","Android","ASP.Net","Net","JAVA","Python"]
     var imagearray = ["k4","k10","k7","k5","k8"]
    
    @IBOutlet weak var imgview: UIImageView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagearray.count//techName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //prototype cell from table 
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = imagearray[indexPath.row] //techName[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let img = UIImage(named : imagearray[indexPath.row])
        imgview.image = img
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

