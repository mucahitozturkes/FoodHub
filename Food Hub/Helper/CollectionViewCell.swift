import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var backgroundV1: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageV1: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    private func setupUI() {
        // Add a more pronounced shadow
        backgroundV1.layer.shadowColor = UIColor.lightGray.cgColor
        backgroundV1.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundV1.layer.shadowOpacity = 0.2// Increase opacity for a more pronounced shadow
        backgroundV1.layer.shadowRadius = 4.0 // Increase radius for a larger shadow

        // Round the corners
        backgroundV1.layer.cornerRadius = 30
   
        // Round the corners of the image view
        imageV1.layer.cornerRadius = 25
        imageV1.layer.masksToBounds = true
    }


}
