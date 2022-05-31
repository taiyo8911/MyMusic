//
//  new.swift
//  MyJanken
//
//  Created by Taiyo Koshiba on 2022/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            // スペースの追加
            Spacer()
            
            // じゃんけんの数字が0だったら
            if answerNumber == 0 {
                // 初期画面のテキストを表示
                Text("これからじゃんけんをします")
                // 下辺に余白を設定
                    .padding(.bottom)
                
            } else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グー画像を指定
                // グー画像を指定
                Image("gu")
                // リサイズ
                    .resizable()
                // 画面内に収まるようにアスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                // スペースの追加
                Spacer()
                
                // じゃんけんの種類を指定
                Text("グー")
                // 下辺に余白を設定
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキ画像を指定
                // チョキ画像を指定
                Image("choki")
                // リサイズ
                    .resizable()
                // 画面内に収まるようにアスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                // スペースの追加
                Spacer()
                
                // じゃんけんの種類を指定
                Text("チョキ")
                // 下辺に余白を設定
                    .padding(.bottom)
                
            } else {
                // じゃんけんの数字が1か2以外だったら、パー画像を指定
                //パー画像を指定
                Image("pa")
                // リサイズ
                    .resizable()
                // 画面内に収まるようにアスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                // スペースの追加
                Spacer()
                
                // じゃんけんの種類を指定
                Text("パー")
                // 下辺に余白を設定
                    .padding(.bottom)
                
            }
            
            // じゃんけんをするボタン
            Button(action: {
                // 新しいじゃんけんの手を一時的に格納する
                var newAnswerNumber = 0
                
                // 前回と違う手になるまで繰り返す
                repeat {
                    // 1〜3のランダムな値を算出する
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    // 前回と同じ手の場合は繰り返す
                } while answerNumber == newAnswerNumber
                
                // 前回と違う手になったら、じゃんけんの手を決定する
                answerNumber = newAnswerNumber
            }) {
                
                // ボタンに表示する文字の設定
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
