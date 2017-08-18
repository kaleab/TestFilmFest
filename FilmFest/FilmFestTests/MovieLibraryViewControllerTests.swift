//
//  MovieLibraryViewControllerTests.swift
//  FilmFest
//
//  Created by Kaleab Yemam on 8/17/17.
//  Copyright © 2017 Kaleab Yemam. All rights reserved.
//

import XCTest
@testable import FilmFest

class MovieLibraryViewControllerTests: XCTestCase {
    
    var sut: MovieLibraryViewController!
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //sut = MovieLibraryViewController()
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        sut = storyboard.instantiateViewController(withIdentifier: "MovieLibraryVC") as! MovieLibraryViewController
        
        _ = sut.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMovieLibraryVC_TableViewShouldNotBeNik() {
       
        XCTAssertNotNil(sut.movieTableView)
        
    }
    
    func testViewDidLoad_SetsTableViewDataSource() {
        XCTAssertNotNil(sut.movieTableView.dataSource)
        XCTAssertTrue(sut.movieTableView.dataSource is MovieLibraryDataService)
        
    }
    
    func testViewDidLoad_SetsTableViewDelegate() {
        XCTAssertNotNil(sut.movieTableView.delegate)
        XCTAssertTrue(sut.movieTableView.delegate is MovieLibraryDataService)
        
    }
    
    func testViewDidLoad_SetsTableViewDelegateAndDataSourceToSameObject() {
        XCTAssertEqual(sut.movieTableView.delegate as! MovieLibraryDataService, sut.movieTableView.dataSource as! MovieLibraryDataService)
        
    }
    
}
