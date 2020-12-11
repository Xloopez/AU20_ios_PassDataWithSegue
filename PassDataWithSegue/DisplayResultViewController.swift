//
//  DisplayResultViewController.swift
//  PassDataWithSegue
//
//  Created by Nicole Lopez feliz on 2020-12-11.
//

import UIKit

class DisplayResultViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var receivingName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = receivingName
        
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
