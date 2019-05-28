
import UIKit


class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    var menu: Menu? {
        didSet {
            cellLabel.text = menu?.name
            if let image = menu?.imagename {
                cellImageView.image = UIImage(named: image)
            }
            cellImageView.backgroundColor = .blue
        }
    }
    
}
