//
//  DetailViewController.swift
//  Flix
//
//  Created by Chris lin on 1/20/18.
//  Copyright © 2018 Chris lin. All rights reserved.
//

import UIKit

/*enum MovieKeys{
    static let title = "title"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}*/
class DetailViewController: UIViewController {

    @IBOutlet weak var overViewLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var backdropImageView: UIImageView!
    
    var movie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overViewLabel.text = movie.overview
            if movie.backdropURL != nil{
                backdropImageView.af_setImage(withURL: movie.backdropURL!)
            }
            if movie.posterUrl != nil{
                posterImageView.af_setImage(withURL: movie.posterUrl!)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
