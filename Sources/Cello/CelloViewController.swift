//
//  CelloViewController.swift
//
//
//  Created by Eutopia on 2022/1/23.
//

import UIKit
import SnapKit

public class CelloViewController: UIViewController {

  lazy var coverImage: UIImageView = {
    let image = UIImageView(image: UIImage(named: "cover-cello", in: Bundle.module, compatibleWith: nil))
    image.contentMode = .scaleAspectFill
    return image
  }()

  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.text = "Cello"
    label.font = UIFont.boldSystemFont(ofSize: 30)
    label.textColor = .orange
    
    return label
  }()

  public override func viewDidLoad() {
    super.viewDidLoad()
  
    layout()
  }

  func layout() {
    self.view.addSubview(coverImage)
    self.view.addSubview(titleLabel)

    coverImage.snp.makeConstraints { make in
      make.width.equalTo(300)
      make.height.equalTo(225)
      make.center.equalToSuperview()
    }
    titleLabel.snp.makeConstraints { make in
      make.top.equalTo(coverImage.snp.bottom).offset(30)
      make.centerX.equalToSuperview()
    }
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
