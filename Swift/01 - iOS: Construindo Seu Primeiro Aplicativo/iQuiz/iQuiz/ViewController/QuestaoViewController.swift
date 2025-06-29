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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = self.pontuacao
    }
    
    private func configureView() {
        self.navigationItem.hidesBackButton = true
        
        for botao in self.botoesRespostas {
            botao.layer.cornerRadius = 16
            botao.titleLabel?.textAlignment = UIKit.NSTextAlignment.center
        }
    }
    
    private func navegarParaResultado() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    @objc private func configurarQuestao() {
        self.tituloQuestaoLabel.text = questoes[self.numeroQuestao].titulo
        
        for botao in self.botoesRespostas {
            let tituloBotao = questoes[self.numeroQuestao].alternativas[botao.tag]
            botao.setTitle(tituloBotao, for: UIControl.State.normal)
            botao.backgroundColor = UIColor(red: 153/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = sender.tag == questoes[self.numeroQuestao].alternativaCorreta
        
        if usuarioAcertouResposta {
            self.pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if self.numeroQuestao < (questoes.count - 1) {
            self.numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.configurarQuestao), userInfo: nil , repeats: false)
        } else {
            self.navegarParaResultado()
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
}
