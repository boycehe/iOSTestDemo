//
//  ViewController.swift
//  BHiOSTestDemo
//
//  Created by heboyce on 16/3/24.
//  Copyright © 2016年 boycehe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var dataArr:NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          self.title = "测试集合";
         dataArr = NSMutableArray()
        
        
         dataArr.addObject("111")
         dataArr.addObject("111")
         dataArr.addObject("111")
         dataArr.addObject("111")
         dataArr.addObject("111")
         dataArr.addObject("111")
        
         self.tableView.reloadData()
        
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "UITableViewCellIdentifier")
      
        cell.textLabel?.text       = self.dataArr[indexPath.row]as? String;
        cell.textLabel?.font       = UIFont.systemFontOfSize(16)
        cell.detailTextLabel?.font = UIFont.systemFontOfSize(10)
        cell.detailTextLabel?.textColor = UIColor.lightGrayColor()
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        
        return cell
    }
    
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let v     = storyboard.instantiateViewControllerWithIdentifier("CYSearchDetailController") as!UIViewController
    
        self.navigationController?.pushViewController(v, animated: true)
        */
        
    }
    
    internal func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44.0
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
   
    
    

    

}

