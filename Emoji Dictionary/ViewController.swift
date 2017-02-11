//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Mohammed Al-Khonaizi on 2/10/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis = ["😎", "😜", "😱", "😍", "😡", "😂", "😅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //print(indexPath.row)
        let cell = UITableViewCell ()
        // cell.textLabel?.text = "Hello There!"
        //cell.textLabel?.text = "😎"
        cell.textLabel?.text = emojis [indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegway", sender: emoji)
    }
    
    // I had to use the below version of following function, which is
    // deferent from the one on Nick's video and also adds (as Any)
    // after sender in print function.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(sender as Any )
        let defVC = segue.destination as! definitionViewController
        defVC.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

