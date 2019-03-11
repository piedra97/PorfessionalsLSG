//
//  JobDescriptionViewController.swift
//  ProfessionalFutureLSG
//
//  Created by Alumne on 07/03/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class JobDescriptionViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var professionalToDisplay:Professional?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentProfessional = professionalToDisplay{
            self.imageView.image = UIImage(named: currentProfessional.imageName)
        }

        // Do any additional setup after loading the view.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
