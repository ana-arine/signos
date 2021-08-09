//
//  PrimeiraViewController.swift
//  SignosDataStorage
//
//  Created by Ana Lucia Fermino de O. Arine on 20/07/21.
//

import UIKit

class PrimeiraViewController: UIViewController {

    @IBOutlet weak var nomeUsuario: UITextField!
    @IBOutlet weak var nascimentoUsuario: UITextField!
    @IBOutlet weak var btnMostrarSigno: UIButton!
    @IBOutlet weak var btnLimparCampos: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nomeUsuario.delegate = self
        nascimentoUsuario.delegate = self
        
   
    }
   
    @IBAction func mostrarSigno(_ sender: Any) {
        
        
    }
    
//    @objc func tapOnButton(){
//          let story = UIStoryboard(name: "Main", bundle: nil)
//          let controller = story.instantiateViewController(identifier: "SegundaViewController") as! SegundaViewController
//          self.present(controller, animated: true, completion: nil)
//      }
   
    
    @IBAction func apagarCampos(_ sender: Any) {
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nomeUsuario.resignFirstResponder()
        nascimentoUsuario.resignFirstResponder()
    }


}

extension PrimeiraViewController : UITextFieldDelegate {
    
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        textField.hasText()
//        return true
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}



