//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Taiyo Koshiba on 2022/05/30.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバル音源データの読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    // ギター音源データの読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    // ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay(){
        do{
            try
            // シンバル用プレイヤーに音源データを設定
            cymbalPlayer = AVAudioPlayer(data: cymbalData)
            
            // シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました！")
        }
    }
    
    func guitarPlay(){
        do{
            try
            // ギター用プレイヤーに音源データを設定
            guitarPlayer = AVAudioPlayer(data: guitarData)
            
            // ギターの音源再生
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }
}
