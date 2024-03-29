//
//  FeedLinksTableViewController.swift
//  Strings
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit


struct Feed{
    var id : Int
    var name: String
   var instrument : String
    //var link: String
    
}
class FeedLinksTableViewController: UITableViewController {

    var allFeed = [Feed(id: 1, name: "Cheyenne Ajebe " , instrument: "Bass Trombone link: https://www.youtube.com/watch?v=UJOa3t2OuPc "), Feed(id: 2, name: "Fred Ghess " , instrument: "Flute link: https://www.youtube.com/watch?v=UJOa3t2OuPc "), Feed(id: 3, name: " Carlo Mine" , instrument: "Piano link: https://www.youtube.com/watch?v=UJOa3t2OuPc "), Feed(id: 4, name: "Drew Nhussh " , instrument: "Oboe link: https://www.youtube.com/watch?v=UJOa3t2OuPc "), Feed(id: 5, name: "Nick Rellta " , instrument: "Trumpet link: https://www.youtube.com/watch?v=UJOa3t2OuPc "), Feed(id: 6, name: "Nancy Drew " , instrument: "Bass link: https://www.youtube.com/watch?v=UJOa3t2OuPc "),Feed(id: 7, name: "Karen Smith " , instrument: "Alto Sax link: https://www.youtube.com/watch?v=UJOa3t2OuPc ")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allFeed.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell_2", for: indexPath)
       
        
        cell.textLabel?.text = allFeed[indexPath.row].name
        cell.detailTextLabel?.text = allFeed[indexPath.row].instrument
       // cell.textLabel?.text = allFeed[indexPath.row].link
        
        

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
 }
 */
}
