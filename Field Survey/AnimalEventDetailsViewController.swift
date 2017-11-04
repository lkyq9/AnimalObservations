//
//  AnimalEventDetailsViewController.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class AnimalEventDetailsViewController: UIViewController {

    var animalsEvent: animalsEvent?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var animaliconimage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var datelabel: UILabel!
    
    @IBOutlet weak var descriptionlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        
        animaliconimage.image = animalsEvent?.classification.image
        titleLabel.text = animalsEvent?.title
        descriptionlabel.text = animalsEvent?.description
        
        if let date = animalsEvent?.date{
            datelabel.text = dateFormatter.string(from: date)
        }else{
            datelabel.text = ""
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
