//
//  SecondViewController.swift
//  MyName
//
//  Created by Владимир Белобродский on 31.01.2022.
//

import UIKit

class SecondViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//        // Do any additional setup after loading the view.
//    }
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    
    


    
    @IBAction func ShowAlert(){
        let alertController = UIAlertController(title: "Привет, мир", message: "ОО да, детка, ты работаешь хорошо", preferredStyle: UIAlertController.Style.alert)
        
        let actionOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { _ in print("Ok buton pressed")
            
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { _ in print("Cancel buton pressed")
            
        }
        
        let actionCancel2 = UIAlertAction(title: "Cancel2", style: UIAlertAction.Style.destructive) { _ in print("Cancel2 (Dectructive) buton pressed")
            
        }
        
        
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        alertController.addAction(actionCancel2)
        
        
        self.present(alertController, animated: true, completion: nil)
        
          
        
    }
    
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        
        if let buttonText = sender.titleLabel!.text
        {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func switchValChange(_ sender: UISwitch) {
        if sender.isOn {
            print("1")
        }
        else
        {
            print("0")
        }
    }
    

    


}
