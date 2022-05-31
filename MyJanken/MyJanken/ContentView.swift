//
//  ContentView.swift
//  MyJanken
//
//  Created by Taiyo Koshiba on 2022/05/19.
//

import SwiftUI

struct ContentView: View {
    
    // answerNumberの変化を期に、画面表示が変わる
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            // スペースの調整
            Spacer()
            
            // 初期表示
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                // 下辺に余白を設定
                    .padding(.bottom)
                
                
                // 算出する数字が1だったら、グーを表示
            } else if answerNumber == 1 {
                // グー画像を指定
                Image("gu")
                // リサイズ
                    .resizable()
                // 画面内に収まるようにアスペクト比を維持
                    .aspectRatio(contentMode: .fit)
                
                // スペースの調整
                Spacer()
                
                Text("グー")
                // 下辺に余白を設定
                    .padding(.bottom)
                
                
                // 算出する数字が2だったら、チョキを表示
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
                
                
                // 算出する数字が3だったら、パーを表示
            } else if answerNumber == 3{
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
                
            }
            
            // 「じゃんけんをする!」ボタンの設定
            // ボタンが押されたときの動作を指定
            Button(action: {
                // 数値を一時的に格納する
                var newAnswerNumber = 0
                
                // 前回と違う手になるまで繰り返す
                repeat {
                    // 1〜3のランダムな値を算出する
                    newAnswerNumber = Int.random(in: 1...3)
                    
                } while answerNumber == newAnswerNumber
                
                // 前回と違う手になった段階でじゃんけんの手を決定する
                answerNumber = newAnswerNumber
                //answerNumberの値が変化すると、プログラムが更新され、画面表示が変わる
                
            })
            {
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
