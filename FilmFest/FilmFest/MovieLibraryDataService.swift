//
//  MovieLibraryDataService.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/17/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import UIKit

class MovieLibraryDataService: NSObject,UITableViewDelegate ,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    

}
