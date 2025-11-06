//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Tanzim Islam on 11/5/25.
//

import UIKit
import Nuke
import NukeExtensions

class DetailViewController: UIViewController {
    
    var post: Post!

    @IBOutlet weak var blogImageView: UIImageView!
    
    @IBOutlet weak var blogLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change navigation bar title color
                //navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
                
                navigationItem.largeTitleDisplayMode = .never
        
        blogLabel.text = post.caption.trimHTMLTags()
        
        if let imageURL = post.photos.first?.originalSize.url{
            let urlRequest = ImageRequest(url: imageURL)
            NukeExtensions.loadImage(with: urlRequest, into: blogImageView)
            
        }

        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
