
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
        
        WorkRecordTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
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
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = imageTitles[indexPath.row]
        cell.detailTextLabel?.text = imageDescriptions[indexPath.row]
        
        
        return cell
    }
    
    //cellが選択された時の処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)番セルが押された")
    }
    
}

