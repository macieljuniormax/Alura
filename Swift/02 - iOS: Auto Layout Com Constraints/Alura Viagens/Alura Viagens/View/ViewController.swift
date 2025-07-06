//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viagensTableView: UITableView!
    
    private var headerConfigured = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
        self.setupTableView()
    }
    
    private func setupUI () {
        self.navigationController?.setNavigationBarHidden(true , animated: false)
        self.view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1.0)
    }
    
    private func setupTableView() {
        self.viagensTableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
        self.viagensTableView.dataSource = self
        self.viagensTableView.delegate = self
        self.viagensTableView.backgroundColor = UIColor.white
        self.viagensTableView.contentInsetAdjustmentBehavior = .automatic
        self.viagensTableView.sectionHeaderTopPadding = 0
    }
}

extension ViewController: UITableViewDataSource {
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numeroDeLinhas ?? 0
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let celulaViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
            fatalError("Erro to create ViagemTableViewCell")
        }
        
        guard let viewModel = sessaoDeViagens?[indexPath.section] else {
            return UITableViewCell()
        }
        
        switch viewModel.tipo {
        case ViagemViewModelType.destaques:
            celulaViagem.setupCelula(viewModel.viagens[indexPath.row])
            return celulaViagem
        default :
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader else {
            return nil
        }

        headerView.setupView()
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 475
    }
    
}
