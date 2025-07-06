//
//  ViagemTableViewCell.swift
//  Alura Viagens
//
//  Created by Maciel Ferreira Custódio Júnior on 01/07/25.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    internal func setupCelula(_ viagem: Viagem?) {
        self.viagemImage.image = UIImage(named: viagem?.asset ?? "")
        self.tituloViagemLabel.text = viagem?.titulo
        self.subtituloViagemLabel.text = viagem?.subtitulo
        self.precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let atributoPrecoSemDesconto: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        atributoPrecoSemDesconto.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoPrecoSemDesconto.length))
        self.precoSemDescontoLabel.attributedText = atributoPrecoSemDesconto
        
        if let numeroDeDias = viagem?.diaria,
           let numeroDeHospedes = viagem?.hospedes {
            let diarias = numeroDeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" : "Pessoas"
            
            self.diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
}
