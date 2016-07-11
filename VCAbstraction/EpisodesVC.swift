//
//  EpisodesVC.swift
//  VCAbstraction
//
//  Created by Fahied on 11/07/2016.
//  Copyright © 2016 OLX PK. All rights reserved.
//

import UIKit

class EpisodesVC: UITableViewController {
    
    let espisodes = [Episode(title: "Episode One"), Episode(title: "Episdoes Two"), Episode(title: "Episode Three")]
    var showEpisode: (Episode) -> () = { _ in}
    var showProfile: () -> () = {}
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let episode = espisodes[indexPath.row]
        showEpisode(episode)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return espisodes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let episode = espisodes[indexPath.row]
        cell.textLabel?.text = episode.title
        return cell
    }    
    
    @IBAction func didTapProfile(sender: AnyObject) {
        showProfile()
    }
}
