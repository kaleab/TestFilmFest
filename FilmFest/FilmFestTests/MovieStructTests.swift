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
    
}
