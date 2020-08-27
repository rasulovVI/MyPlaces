//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Orienbank on 25.08.2020.
//  Copyright © 2020 Orienbank. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTable
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
    
        return cell
    }
    
    @IBAction func cancel (_ segue: UIStoryboardSegue){}
}
