//
//  ViewController.swift
//  practiceTableView
//
//  Created by 仲松拓哉 on 19/01/2018.
//  Copyright © 2018 仲松拓哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    // [“C言語”,”Swift”,”PHP”,”Javascript”,”Ruby”,”Java”,”Python”]（
    var proArray = ["C言語","Swift","PHP","Javascript","Ruby","Java","Python" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //行数指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proArray.count
    }
    
    // 表示する文字列の作成、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //文字列を取得するパスを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        //表示したい文字列の指定
        cell.textLabel?.text = proArray[indexPath.row]
        
        //文字列を返す
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

