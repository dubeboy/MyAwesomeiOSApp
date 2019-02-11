//
//  PersonTableViewController.swift
//  MyAwesomeApp
//
//  Created by Divine Dube on 2019/02/08.
//  Copyright © 2019 Divine Dube. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var people = [Person]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSamplePeople()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // is this the right place to set the height of the cell?
        tableView.rowHeight = 90
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        print("called")
        let cellIdentifier = "PersonTableViewCell"
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PersonTableViewCell
        
        let person = people[indexPath.row]
        cell.userPhoto.image = person.photo
        cell.distanceLabel.text = "\(person.distance)KM Away"
        cell.nameLabel.text = person.name
     //   cell.ratingStackView.rating = person.rating
        
        return cell
    }
    
    private func loadSamplePeople() {
        let photo1 = UIImage(named: "kim-1")
        let photo2 = UIImage(named: "sampleDude2")
        let photo3 = UIImage(named: "sampleDude")
        
        
        guard let person = Person(name: "David Jake", photo: photo1, rating: 4, distance: 5) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        guard let person1 = Person(name: "Joe Prince", photo: photo2, rating: 4, distance: 3) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        guard let person2 = Person(name: "Sipho Myeni", photo: photo3, rating: 4, distance: 1) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        people += [person, person1, person2]
    }
    
    private func fetalError(msg: String)   {
        print(msg)
        
    }
    
    
}
