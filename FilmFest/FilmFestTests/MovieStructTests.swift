//
//  MovieStructTests.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/16/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import XCTest
@testable import FilmFest
class MovieStructTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_SetMovieTitle() {
        let movie = Movie(title: "Summer Blockbuster")
        
// ****** Checking(Assert) if our movei.title is = "Summer Blockbuster"
        XCTAssertEqual(movie.title, "Summer Blockbuster")
        
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let movie = Movie(title: "Romantic Comedy", releaseDate: "02/10/1987")
        XCTAssertEqual(movie.releaseDate, "02/10/1987")
        
    }
    
    func testMoviesAreEqual_ShouldReturnTrue()  {
        let movie1 = Movie(title: "Action")
        let movie2 = Movie(title: "Action")
        
        XCTAssertEqual(movie1, movie2)
        
    }
    
    func testIfMovieTitleAreDifferent_ShouldReturnNotEqual()  {
        let movie1 = Movie(title: "Action")
        let movie2 = Movie(title: "Suspense")
        
        XCTAssertNotEqual(movie1, movie2)
        
    }
    
    func testIfMovieReleaseDatesAreDifferent_ShouldReturnNotEqual() {
        let movie1 = Movie(title: "Sci-fi", releaseDate: "02/23/1988")
        let movie2 = Movie(title: "Sci-fi", releaseDate: "03/24/1999")
        
        XCTAssertNotEqual(movie1, movie2)
        
    }
    
    
    
}
