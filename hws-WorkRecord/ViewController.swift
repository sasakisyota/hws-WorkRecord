
import UIKit
//UITableViewDelegate,UITableViewDataSourceをクラスに追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    //スクリーンの横幅、縦幅を定義
    let screenWidth = Int(UIScreen.main.bounds.size.width)
    let screenHeight = Int(UIScreen.main.bounds.size.height)
    
    //テーブルビューインスタンス作成
    var WorkRecordTableView: UITableView = UITableView()
    //テーブルに表示するセル配列
    
    let imageNames = ["ic_congestion","ic_normal","ic_normal"]
    
    var imageTitles = ["函館　蔦屋書店","亀田交流プラザ","亀田交流プラザ"]
    
    let imageDescriptions = ["作業日：2021年11月21日","作業日：2021年12月12日","作業日:2021年12月12日"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューの設置場所を指定
        WorkRecordTableView.frame = CGRect(x:screenWidth * 0/100, y:screenHeight * 10/100,
                                           width:screenWidth * 100/100, height:screenHeight * 80/100)
        WorkRecordTableView.delegate = self
        WorkRecordTableView.dataSource = self
        
        WorkRecordTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(WorkRecordTableView)
        
        self.WorkRecordTableView.rowHeight = 100
        WorkRecordTableView.separatorColor = UIColor.gray
        
    }
    
    //セクション数を指定
    func numberOfSections(in WorkRecordTableView: UITableView) -> Int {
        return 1
    }
    //表示するcellの数を指定
    func tableView(_ WorkRecordTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageTitles.count
    }
    //cellのコンテンツ
    func tableView(_ WorkRecordTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = WorkRecordTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel1.text = imageTitles[indexPath.row]
        cell.nameLabel1.sizeToFit()
        
        cell.nameLabel2.text = imageDescriptions[indexPath.row]
        cell.nameLabel2.sizeToFit()
        
        return cell
    }
    
    //cellが選択された時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番セルが押された")
    }
    
}

//カスタムセルクラス

class CustomTableViewCell: UITableViewCell {
    
    let imageNames = ["ic_congestion","ic_normal","ic_normal"]
    
    let nameLabel1 = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 0))
    let nameLabel2 = UILabel(frame: CGRect(x: 10, y: 30, width: 300, height: 0))
   
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        nameLabel1.numberOfLines = 0
        nameLabel1.lineBreakMode = .byWordWrapping
        self.contentView.addSubview(nameLabel1)
        
        nameLabel2.numberOfLines = 0
        nameLabel2.lineBreakMode = .byWordWrapping
        self.contentView.addSubview(nameLabel2)
        
        let image1:UIImage = UIImage(named:imageNames[0])!
        let nameImage1 = UIImageView(image: image1)
        let rect:CGRect =
                    CGRect(x:350, y:20, width:50, height:50)
        nameImage1.frame = rect
        self.contentView.addSubview(nameImage1)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        contentView.backgroundColor = .clear
        backgroundColor = .clear
    }
}


