    //
    //  MainTableViewCell.swift
    //  hws-WorkRecord
    //
    //  Created by 佐々木翔太 on 2021/11/13.
    //

    import UIKit

    class MainTableViewCell: UITableViewCell
    {
        @IBOutlet weak var label1: UILabel!
        @IBOutlet weak var label2: UILabel!
        @IBOutlet weak var img: UIImageView!
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
        //画像・タイトル・説明文を設定するメソッド
        func setCell(imageName: String, titleText: String, descriptionText: String){
            img.image = UIImage(named: imageName)
            label1.text = titleText
            label2.text = descriptionText
            
        }
        
    }
