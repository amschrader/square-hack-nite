import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {

    // Do any additional setup after loading the view, typically from a nib.
    let label = UILabel()
    label.text = "Hello!"
    label.textColor = UIColor.blackColor()
    label.sizeToFit()
    label.frame = CGRect(x: 100, y: 100, width: label.frame.width, height: label.frame.height)
    view.addSubview(label)

    let donationButton = DonationButton(price: 50, title: "Pls donate")
    donationButton.sizeToFit()
    donationButton.frame = CGRect(x: 100, y: 200, width: donationButton.frame.width, height: donationButton.frame.height)
    view.addSubview(donationButton)

    donationButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "donationButtonTapped:"))

    let donationButton2 = DonationButton(price: 100, title: "Pls donate")
    donationButton2.sizeToFit()
    donationButton2.frame = CGRect(x: 100, y: 400, width: donationButton.frame.width, height: donationButton.frame.height)
    donationButton2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "donationButtonTapped:"))
    view.addSubview(donationButton2)
    
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func donationButtonTapped(sender: UITapGestureRecognizer) {
    guard let button = sender.view as? DonationButton else {
      return
    }

    if button.backgroundColor == UIColor.redColor() {
      button.backgroundColor = DonationButton.defaultButtonColor
    } else {
      button.backgroundColor = UIColor.redColor()
    }
  }

  func openRegister(price: Int) {
    let url = NSURL(fileURLWithPath: "")

    //SCCAPIRequest
  }


}

