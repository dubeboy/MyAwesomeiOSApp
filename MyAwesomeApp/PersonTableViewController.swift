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
    
    var meals = [Person]()
    

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
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        print("called")
        let cellIdentifier = "PersonTableViewCell"
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PersonTableViewCell
        
        let person = meals[indexPath.row]
        cell.userPhoto.image = person.photo
        cell.distanceLabel.text = "\(person.distance)KM Away"
        cell.nameLabel.text = person.name
     //   cell.ratingStackView.rating = person.rating
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadSamplePeople() {
        let photo1 = UIImage(named: "kim-1")
        let photo2 = UIImage(named: "sampleDude2")
        let photo3 = UIImage(named: "sampleDude")
        
        
        guard let meal1 = Person(name: "David Jake", photo: photo1, rating: 4, distance: 5) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        guard let meal2 = Person(name: "Joe Prince", photo: photo2, rating: 4, distance: 3) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        guard let meal3 = Person(name: "Sipho Myeni", photo: photo3, rating: 4, distance: 1) else {
            fetalError(msg: "Unable to create object")
            return
        }
        
        meals += [meal1, meal2, meal3]
    }
    
    private func fetalError(msg: String)   {
        print(msg)
        
    }
    
    
}
