//
//  ViewController.swift
//  PassDataWithSegue
//
//  Created by Nicole Lopez feliz on 2020-12-11.
//

import UIKit

class ViewController: UIViewController {
    
    let segueToView2 = "segueToView2"
    
    @IBOutlet weak var textBox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        //När knappen trycks och funktionen körs så har vi sagt att vi preform en segue
        //Vi övergår från en aktivitet t en annan
        //Oftast så här vi jobbar SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
        performSegue(withIdentifier: segueToView2, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Vi ska kolla vilken segue som ska köras, och isåfall ska vi skicka med en viss data
        if segue.identifier == segueToView2 {
            let destinationVC = segue.destination as! DisplayResultViewController
            destinationVC.receivingName = textBox.text
        }
    }
    
    @IBAction func unwindToStartView(segue: UIStoryboardSegue) {
        
    }
}

