//
//  AnimalEventsViewController.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class AnimalEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let animalEvents = AnimalsEventsJSONLoader.load(filename: "animal_events")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int){
        return animalEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationclassCell", for: indexPath)
        
        if let cell = cell as? AnimalEventTableViewCell{
            
            let animalsEvent = animalEvents[indexPath.row]
            cell.animaliconimage.image = animalsEvent.classification.image
            cell.titleicon.text = animalsEvent.title
            
            cell.dateiconview.text = dateFormatter.string(from: animalsEvent.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination = segue.destination as? AnimalEventDetailsViewController{
            destination.animalsEvent = animalEvents[]
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
