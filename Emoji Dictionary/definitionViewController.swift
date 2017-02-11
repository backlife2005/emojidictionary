//
//  definitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mohammed Al-Khonaizi on 2/10/17.
//  Copyright © 2017 Mohammed Al-Khonaizi. All rights reserved.
//

import UIKit

class definitionViewController: UIViewController {
    
    
    @IBOutlet weak var emojiLable: UILabel!
    
    
    @IBOutlet weak var definitionLable: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        emojiLable.text = emoji
        
        if emoji == "😎" {
            definitionLable.text = "A smilling face with sunglasses"
        }

        if emoji == "😍" {
            definitionLable.text = "A smilling face with heart-shaped eyes"
        }
        
        if emoji == "😡" {
            definitionLable.text = "A pouting face"
        }
        
        // definitionLable.text = "Hello"
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
