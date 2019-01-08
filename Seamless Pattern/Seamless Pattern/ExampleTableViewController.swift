//
//  ExampleTableViewController.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/8.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

class ExampleTableViewController: UITableViewController {
    
    var fetcher = Fetcher()
    var lineExamples: [LineExample]!
    var indexPath: IndexPath?

    override func viewDidLoad() {
        fetch()
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
        return (lineExamples ?? []).count
    }
    
    //START HERE
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "lineExample(prototypeCell)", for: indexPath)
     
     
     cell.textLabel?.text = lineExamples[indexPath.row].title ?? "Bleh" 
     // Configure the cell...
     
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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destination = segue.destination as? ExampleViewController else { return }
        guard let indexPath = self.tableView.indexPathForSelectedRow else { return }
        
        destination.exampleLines = lineExamples[indexPath.row].contents //sends the lineExample object's contents from the lineExamples array fetched from the internet.
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    func fetch() {
        guard let url = URL(string: ExampleURL) else { return }
        fetcher.fetch(url: url) { (response) in
            let op = BlockOperation {
                switch response {
                case .success(let data):
                    do {
                        self.lineExamples = try JSONDecoder().decode([LineExample].self, from: data)
                        self.tableView.reloadData()
                        
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                case .failure(let msg):
                    //()//this is how you do a null statement
                    print("\(msg)") //but then Prof. Simons decided to do that
                }
            }
            OperationQueue.main.addOperation(op)
        }
    }
    //^Fetcher Method^//
    
}
