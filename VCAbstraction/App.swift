//
//  App.swift
//  VCAbstraction
//
//  Created by Fahied on 11/07/2016.
//  Copyright © 2016 OLX PK. All rights reserved.
//

import UIKit

class App {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let navigationController : UINavigationController
    
    init(window: UIWindow) {
        navigationController = window.rootViewController as! UINavigationController
        
        let episodeVC = navigationController.viewControllers[0] as! EpisodesVC
        episodeVC.showEpisode = showEpisode
        episodeVC.showProfile = showProfile
    }
    
    func showEpisode(episode: Episode) -> () {
        let detailVC = storyboard.instantiateViewControllerWithIdentifier("Detail") as! DetailVC
        detailVC.episode = episode
        navigationController.pushViewController(detailVC, animated: true)
    }
    
    func showProfile() -> () {
        let profileNVC = self.storyboard.instantiateViewControllerWithIdentifier("Profile") as! UINavigationController
        let profileVC = profileNVC.viewControllers[0] as! ProfileVC
        profileVC.didTapClose = {
            self.navigationController.dismissViewControllerAnimated(true, completion: nil)
        }
        navigationController.presentViewController(profileNVC, animated: true, completion: nil)
    }
    
}
