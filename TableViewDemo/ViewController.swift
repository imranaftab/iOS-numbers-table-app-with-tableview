//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Imran Aftab Rana on 13/10/2016.
//  Copyright © 2016 Imran Aftab Rana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBAction func sliderChanged(sender: AnyObject) {
        table.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 100;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = String(Int(slider.value*10)) + " x " + String(indexPath.row+1) + " = "   + String(Int(slider.value*10)*(indexPath.row+1))
        cell.backgroundColor = UIColor.brownColor()
        return cell
    }

}

