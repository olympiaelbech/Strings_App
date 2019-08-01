//
//  MessagesTableViewController.swift
//  Strings
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit

struct Messages {
    var num : Int
    var College : String
    var message : String
    
}

class MessagesTableViewController: UITableViewController {

    
    var allColleges = [
        Messages(num: 1, College:"NYU", message: "Hi we saw your solo on the bach 12 and we are interested in you, please get back to us soon"),
        Messages(num: 2, College: "Berklee", message: "Hi, your viola solo was really impressive. Do you have any interest in coming to Berklee"),
        Messages(num: 3 , College: "Bard College", message: "Hello, which version of Vivaldi's Gloria did you play on the violin?"),
        Messages(num: 4, College: "Manhattan School of Music", message: "Hey Cheyenne, do you live in New York City? Your music is wonderful and we could offer you a scholarship to join our program! Let us know! Sincerely, MSM"),
        Messages(num: 5 , College: "John Hopkins", message: "Chyenne, you're amazing at music, but we're sure you have other passions, and so do we! Johns Hopkins has amazing programs for music, pre-med, and more. Explore our website at: https://www.jhu.edu/"),
        Messages(num: 6 , College: "Rice University", message: "Everything is bigger in Texas, and that includes our music program, resources, and campus. I hope you are considering to apply to Rice, our regular decision application deadline is January 1"),
        Messages(num: 7, College: "UPenn", message: "We saw your video of you playing Beethoven's Symphony No. 5 in C Minor, would you be interested in seeting up an interview?"),
        Messages(num: 8, College: "Juliard", message: "We viewed your cover of Tchaikovsky's Swan Lake Suite, Op. 20. Your talent intregues us and we would love to host you for an interview."),
        Messages(num: 9, College: "UChigaco", message: "Hi Cheyenne, we saw the clip of you playing Fauré's Pavane in F-sharp Minor. We would like to talk more.")
]
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // var image : String

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allColleges.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell_1", for: indexPath)
        
        cell.textLabel?.text = allColleges[indexPath.row].College
        
        cell.detailTextLabel?.text = allColleges[indexPath.row].message
        
        //cell.imageView?.image = allColleges[indexPath.row].num
    

        return cell
    }
    
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
//    {
//        return "Section \(section)"
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

}
