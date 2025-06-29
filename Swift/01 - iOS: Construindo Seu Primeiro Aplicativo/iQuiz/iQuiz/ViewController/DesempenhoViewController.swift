//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    internal var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        self.configurarDesempenho()
    }
    
    private func configureView() {
        self.navigationItem.hidesBackButton = true
        self.botaoReiniciarQuiz.layer.cornerRadius = 16
    }
    
    private func configurarDesempenho() {
        guard let pontuacao = self.pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões."
        
        let percentual = Double(pontuacao * 100) / Double(questoes.count)
        let percentualFormatado = String(format: "%.2f", percentual)
        self.percentualLabel.text = "Percentual final: \(percentualFormatado)%"
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
