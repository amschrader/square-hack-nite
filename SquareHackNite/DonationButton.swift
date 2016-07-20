import UIKit

class DonationButton: UIView {
  var title: String
  let price: Int

  let titleLabel = UILabel()
  let priceLabel = UILabel()

  static let defaultButtonColor = UIColor.greenColor()

  init(price: Int, title: String) {
    self.price = price
    self.title = title

    super.init(frame: CGRect.zero)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    titleLabel.text = title
    titleLabel.textColor = UIColor.blackColor()
    titleLabel.sizeToFit()
    addSubview(titleLabel)

    priceLabel.text = String(price)
    priceLabel.textColor = UIColor.blackColor()
    priceLabel.sizeToFit()
    addSubview(priceLabel)

    self.backgroundColor = DonationButton.defaultButtonColor

    priceLabel.frame = CGRect(x: (titleLabel.frame.width - priceLabel.frame.width) / 2, y: titleLabel.frame.maxY, width: priceLabel.frame.width, height: priceLabel.frame.height)

    frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: titleLabel.frame.width, height: priceLabel.frame.maxY)

    super.layoutSubviews()
  }

  override func sizeToFit() {
    layoutSubviews()
  }
}