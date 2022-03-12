//
//  May_dayApp.swift
//  May_day
//
//  Created by 中川賢亮 on 2022/02/21.
//

import SwiftUI


@main
struct May_dayApp: App {
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
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
//        return true   // 必要に応じて処理を追加
//    }
//}
