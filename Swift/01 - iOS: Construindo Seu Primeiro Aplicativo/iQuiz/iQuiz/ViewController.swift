//
//  ViewController.swift
//  iQuiz
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("Botão Pressionado")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    private func configureView() {
        self.botaoIniciarQuiz.layer.cornerRadius = 16
    }
}

