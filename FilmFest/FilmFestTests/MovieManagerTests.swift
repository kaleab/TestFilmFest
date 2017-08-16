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
    
    func testMovieCounts_BothShouldReturnZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
    }
    
}
