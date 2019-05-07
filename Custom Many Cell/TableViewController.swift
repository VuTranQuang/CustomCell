//
//  TableViewController.swift
//  Custom Many Cell
//
//  Created by Vũ on 10/24/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit
struct MainImage {
    var image: UIImage
    var title: String
    init(image: UIImage, title: String) {
        self.image = image
        self.title = title
    }
}


class TableViewController: UITableViewController {
    var images: [MainImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArray()
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return images.count
    }
    func createArray() -> [MainImage] {
        var tempImage: [MainImage] = []
        let image1 =  MainImage(image: #imageLiteral(resourceName: "image1"), title: " I Love You")
        let image2 = MainImage(image: #imageLiteral(resourceName: "image2"), title: "I fall in your love")
        let image3 = MainImage(image: #imageLiteral(resourceName: "image3"), title: "Do you love me")
        tempImage.append(image1)
        tempImage.append(image2)
        tempImage.append(image3)
        return tempImage
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
    cell.setImages(video: image)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
