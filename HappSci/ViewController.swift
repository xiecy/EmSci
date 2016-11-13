//
//  ViewController.swift
//  EmSci
//
//  Created by Clark on 11/12/16.
//  Copyright © 2016 Clark Xie. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //notifStateLabel.text = "\nEmSci"
        
        self.view.backgroundColor = UIColor.white
        
        let webUrl = URL(string: "http://emsci.net")
        let requestObj = URLRequest(url: webUrl!)
        webView?.loadRequest(requestObj)
        
        //webView?.scalesPageToFit = true
        sendAutomatedNotification()
        
        //sendNotification(title: "aaa", body: "bbb")
    }
/*
    @IBAction func sendPressed(_ sender: AnyObject) {
        let content = UNMutableNotificationContent()
        
        content.title = "Ity's time to take your EmSci assessment!"
        //content.body = "It's time to take your EmSci assessment!"
        content.sound = UNNotificationSound.default()
        
        // Deliver the notification in five seconds.
        //let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        
        //let date = Date(timeIntervalSinceNow: 10)
        
        let hr = 18
        let min = 43
        let sec = 0.0
        let hms = 18000.0 + Double(hr) * 3600.0 + Double(min) * 60.0 + Double(sec)
        
        let date = Date(timeIntervalSince1970: hms)
        
        /*
        var date = [Date]()
        date.append(Date(timeIntervalSince1970: hms))
        date.append(Date(timeIntervalSince1970: hms + 5.0))
        date.append(Date(timeIntervalSince1970: hms + 10.0))
         */
        // 18000 is 12:00 AM for EST
        let triggerDaily = Calendar.current.dateComponents([.hour,.minute,.second,], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDaily, repeats: true)
        
        let request = UNNotificationRequest.init(identifier: "reminder", content: content, trigger: trigger)
        
        // Schedule the notification.
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error)
        }
        print("Sending a notification in 5 seconds")
    }
*/
    func sendAutomatedNotification() {
        let content = UNMutableNotificationContent()
        
        content.title = "EmSci Assessment"
        content.body = "It's time to take your EmSci assessment!"
        content.sound = UNNotificationSound.default()
        
        // Deliver the notification in five seconds.
        //let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        
        //let date = Date(timeIntervalSinceNow: 10)
        
        let hr = 4
        let min = 02
        let sec = 0.0
        let hms = 18000.0 + Double(hr) * 3600.0 + Double(min) * 60.0 + Double(sec)
        
        let date = Date(timeIntervalSince1970: hms)
        
        /*
         var date = [Date]()
         date.append(Date(timeIntervalSince1970: hms))
         date.append(Date(timeIntervalSince1970: hms + 5.0))
         date.append(Date(timeIntervalSince1970: hms + 10.0))
         */
        // 18000 is 12:00 AM for EST
        let triggerDaily = Calendar.current.dateComponents([.hour,.minute,.second,], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDaily, repeats: true)
        
        let request = UNNotificationRequest.init(identifier: "reminder", content: content, trigger: trigger)
        
        // Schedule the notification.
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error)
        }
        
        print("Sending a notification at designated time")
        //otifStateLabel.text = "Notification configured"
    }
    
    
    /*
    func sendNotification(title: String, body: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.badge = 1
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5,
                                                        repeats: false)
        
        let notifRequest = UNNotificationRequest(identifier: "notification",
                                                 content: content,
                                                 trigger: trigger)
    }
 */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

