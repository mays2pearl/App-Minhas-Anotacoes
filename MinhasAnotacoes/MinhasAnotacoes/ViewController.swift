//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Maysa on 01/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    let chave = "minhaAnotacao"
    
    @IBOutlet weak var textoCampo: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textoCampo.text = recuperarAnotacao()
    }

    @IBAction func salvarAnotacao(_ sender: UIButton) {
        
        if let texto = textoCampo.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    func recuperarAnotacao() -> String {
        
       if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
        return textoRecuperado as! String
    }
    return " "
}
}
