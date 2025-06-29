//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    private var pontuacao : Int = 0
    private var numeroQuestao : Int = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        self.configurarQuestao()
    }
    
    private func configureView() {
        self.navigationItem.hidesBackButton = true
        
        for botao in self.botoesRespostas {
            botao.layer.cornerRadius = 16
        }
    }
    
    private func configurarQuestao() {
        self.tituloQuestaoLabel.text = questoes[self.numeroQuestao].titulo
        
        for botao in self.botoesRespostas {
            let tituloBotao = questoes[self.numeroQuestao].alternativas[botao.tag]
            botao.setTitle(tituloBotao, for: UIControl.State.normal)
        }
    }
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
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
