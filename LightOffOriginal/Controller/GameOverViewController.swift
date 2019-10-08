//
//  GameOverViewController.swift
//  LightOffOriginal
//
//  Created by Pedro Vargas on 08/10/19.
//  Copyright © 2019 Pedro Vargas. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func playButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        Model.shared.level += 1
        if Model.shared.level > Model.shared.worldArray[Model.shared.world].levelArray.count {
            Model.shared.level = 0
        }
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
