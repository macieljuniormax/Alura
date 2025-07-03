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
    }
    
    private func setupUI () {
        self.navigationController?.setNavigationBarHidden(true , animated: false)
        self.view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1.0)
        
        self.viagensTableView.dataSource = self
        self.viagensTableView.delegate = self
        self.viagensTableView.backgroundColor = UIColor.white
        self.viagensTableView.contentInsetAdjustmentBehavior = .automatic
        self.viagensTableView.sectionHeaderTopPadding = 0
    }
    
    private func setupTableViewHeader () {
        guard let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader else {
              print("Erro ao carregar o HomeTableViewHeader.xib")
              return
          }
        
        let headerHeight: CGFloat = 300
        headerView.frame = CGRect(x: 0, y: 0, width: viagensTableView.bounds.width, height: headerHeight)
        
        self.viagensTableView.tableHeaderView = headerView
    }
}

extension ViewController: UITableViewDataSource {
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader else {
            return nil
        }

        headerView.configuraView()
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300     }
}
