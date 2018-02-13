//
//  Movie.swift
//  Flix
//
//  Created by Chris lin on 2/7/18.
//  Copyright © 2018 Chris lin. All rights reserved.
//

import Foundation
class Movie{
    var title: String
    var overview: String
    var posterUrl: URL?
    var backdropURL: URL?
    var releaseDate: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        let baseURL = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: baseURL + (dictionary["poster_path"] as? String)!)
        backdropURL = URL(string: baseURL + (dictionary["backdrop_path"] as? String)!)
        releaseDate = dictionary["release_data"] as? String ?? "No release date"
    }
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
