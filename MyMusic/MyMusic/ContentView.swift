//
//  ContentView.swift
//  MyMusic
//
//  Created by Taiyo Koshiba on 2022/05/30.
//

import SwiftUI

struct ContentView: View {
    
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            HStack{
                Button(action: {
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }){
                    Image("cymbal")
                }
                
                Button(action: {
                    // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }){
                    Image("guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
