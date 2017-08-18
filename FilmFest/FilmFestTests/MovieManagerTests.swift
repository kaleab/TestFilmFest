//
//  MovieManagerTests.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/16/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieManagerTests: XCTestCase {
    
    var sut: MovieManager!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMoviesToSeeCount_ReturnZero() {
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testMoviesSeen_ReturnsZero() {
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    /*
    func testMovieCounts_BothShouldReturnZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
    }
    */
    
    func testMoviesToSeeCount_ShouldBeOneAfterMovieAdded () {
        sut.addMovieToLibrary(movie: Movie(title: "Sci-fi Adventure"))
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        
    }
    
    func testMovieAtIndex_returnsLastAddedMovie() {
        let movie = Movie(title: "Action Thriller")
        sut.addMovieToLibrary(movie: movie)
        
        let returnedMovieAtIndex = sut.movieAtIndex(index: 0)
        XCTAssertEqual(movie.title, returnedMovieAtIndex.title)
    }
    
    func testFavoritMovie_updatesMoviesSeenAndMoviesToSeeCount() {
        sut.addMovieToLibrary(movie: Movie(title: "Action Adventure"))
        
        sut.favoriteMovieAtIndex(index:0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testFavoritMovie_ShouldRemoveMovieFromMoviesToSeeArray() {
        let movie1 = Movie(title: "Action Adventure")
        let movie2 = Movie(title: "Biography")
        
        sut.addMovieToLibrary(movie: movie1)
        sut.addMovieToLibrary(movie: movie2)
        sut.favoriteMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, movie2.title)
        
    }
    
    func testFavoriteMovieAtIndex_ShouldReturnFavoritedMovie()  {
        let movie = Movie(title: "Thriller")
        
        sut.addMovieToLibrary(movie: movie)
        sut.favoriteMovieAtIndex(index: 0)
        let returnedMovie = sut.favoritedMovieAtIndex(index: 0)
        
        XCTAssertEqual(movie.title, returnedMovie.title)
        
    }
    
    func testClearAllArrayItems_ShouldReturnArrayCountOfZero()  {
        
        sut.addMovieToLibrary(movie: Movie(title:"Thriller"))
            sut.addMovieToLibrary(movie: Movie(title: "Action"))
        sut.favoriteMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArray()
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
        
    }
    
}
