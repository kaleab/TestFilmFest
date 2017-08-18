//
//  MovieManager.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/16/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import Foundation

class MovieManager {
    
    /* var moviesToSeeCount = 0
       var moviesSeenCount = 0   */
    
    var moviesToSeeCount: Int { return moviesToSeeArray.count}
    var moviesSeenCount: Int {return moviesSeenArray.count}
    
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    
    func addMovieToLibrary(movie: Movie) {
       // moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
        
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[index]
    }
    
    func favoriteMovieAtIndex(index: Int)  {
        guard index < moviesToSeeCount else {
            return
        }
       // moviesToSeeCount -= 1
     //   moviesSeenCount += 1
        
        let faveritedMovie =  moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(faveritedMovie)
        
    }
    
    func favoritedMovieAtIndex(index: Int) -> Movie {
        return moviesSeenArray[index]
    }
    
    func clearArray() {
        
        moviesToSeeArray.removeAll()
        moviesSeenArray.removeAll()
    }
    
}
