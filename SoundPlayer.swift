//
//  SoundPlayer.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/03/10.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    let music_data1 = NSDataAsset(name: "music1")!.data // 音源1の指定
    let music_data2 = NSDataAsset(name: "music2")!.data // 音源2の指定
    let music_data3 = NSDataAsset(name: "music3")!.data // 音源3の指定
    
    var music_player: AVAudioPlayer!  //AudioPlayerを用意　音源の再生に用いる
    
    
    
    
    
    // Music1 //
    
    func musicPlayer1() {        // 音源データの選択、再生の関数を作成
        
        
        
        // バックグラウンド再生に使うとのことだが、うまく機能しない。置き場所が悪い？
        //        do {
        //            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        //        } catch _ {
        //            print("music1のバックグラウンド再生ができていません。")
        //        }
        
        
        
        
        do {
            music_player = try AVAudioPlayer(data: music_data1) // 音源データの指定
            music_player?.numberOfLoops = -1      // 音源のループ再生  ⇨⇨→1.2...5 で回数分再生 -1でループ再生
            music_player?.prepareToPlay()       // 音源を即時再生させる
            music_player?.play()        // 音源の再生
            
            //            do {
            //                try AVAudioSession.sharedInstance().setActive(true)
            //            } catch _ {
            //                NSLog("audio session active failure")
            //            }
            
            
        }catch {
            print("エラー発生。music1を鳴らせません。") // エラー時の処理
        }
        
        //        let audioSession = AVAudioSession.sharedInstance()  // AVAudioSessionの準備
        //        do {
        //            try audioSession.setCategory(.playback)
        //
        //                // AVAudioSessionの有効化
        //                try audioSession.setActive(true)
        //            } catch {
        //                print(error)
        //            }
        
        
        
    }
    
    
    
    
    // Music2 //
    
    func musicPlayer2() {        // 音源データの選択、再生の関数を作成
        do {
            music_player = try AVAudioPlayer(data: music_data2) // 音源データの指定
            music_player?.numberOfLoops = -1      // 音源のループ再生  ⇨⇨→1.2...5 で回数分再生 -1でループ再生
            music_player?.prepareToPlay()       // 音源を即時再生させる
            music_player?.play()        // 音源の再生
        }catch {
            print("エラー発生。music2を鳴らせません。") // エラー時の処理
        }
        
    }
    
    
    
    
    
    // Music3 //
    
    func musicPlayer3() {        // 音源データの選択、再生の関数を作成
        do {
            music_player = try AVAudioPlayer(data: music_data3) // 音源データの指定
            music_player?.numberOfLoops = -1      // 音源のループ再生  ⇨⇨→1.2...5 で回数分再生 -1でループ再生
            music_player?.prepareToPlay()       // 音源を即時再生させる
            music_player?.play()        // 音源の再生
        }catch {
            print("エラー発生。music3を鳴らせません。") // エラー時の処理
        }
        
    }
    
    func stopAllMusic() {       // 音源データの停止
        music_player?.stop()
    }
    
    
//    func backGround(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
//        let session = AVAudioSession.sharedInstance()
//        do {
//            try session.setCategory(.playback, mode: .default)
//        } catch {
//            fatalError("Cateogry設定失敗")
//        }
//
//        do {
//            try session.setActive(true)
//        } catch {
//            fatalError("Session失敗")
//        }
//
//        return true
//    }
}

