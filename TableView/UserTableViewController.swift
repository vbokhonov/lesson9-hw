//
//  ViewController.swift
//  TableView
//
//  Created by Valentyn Bokhonov on 06.05.2021.
//

import UIKit

class UserTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let userList: [String: String] = [
        "Dorothy Hodgkin":"dora234",
        "Edmond Halley":"eddie_super_star",
        "Edwin Powell Hubble":"EdPoHuGenious",
        "Elizabeth Blackburn":"l.i.z.z.y",
        "Enrico Fermi":"TurboSlayer",
        "Erwin Schroedinger":"IronMerc",
        "Flossie Wong-Staal":"DarkCarnage",
        "Frieda Robscheit-Robbins":"Frie.Da",
        "Geraldine Seydoux":"CrypticHatter",
        "Gertrude B. Elion":"SteelTitan",
        "Ingrid Daubechies":"need_more_coffee",
        "Jacqueline K. Barton":"FatalDestiny",
        "Jane Goodall":"CrashTV",
        "Jocelyn Bell Burnell":"StealthedDefender",
        "Johannes Kepler":"UltimateBeast",
        "Lene Vestergaard Hau":"Blue Defender",
        "Lise Meitner":"Blaze_Assault",
        "Lord Kelvin":"MaskedTitan",
        "Maria Mitchell":"Toxic Headshot",
        "Marie Curie":"Venom Fate",
        "Max Born":"Frozen_Gunner_Fix",
        "Max Planck":"b.with.photos",
        "Melissa Franklin":"fantastic.shoppingaddict",
        "Michael Faraday":"yabba dabba doo!",
        "Mildred S. Dresselhaus":"respectmyauthori-tah",
        "Nicolaus Copernicus":"not_a_troll",
        "Niels Bohr":"fbi_surveillance_team",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension UserTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        cell.textLabel?.text = Array(userList.keys)[indexPath.row]
        cell.detailTextLabel?.text = Array(userList.values)[indexPath.row]
        return cell
    }
    
}

