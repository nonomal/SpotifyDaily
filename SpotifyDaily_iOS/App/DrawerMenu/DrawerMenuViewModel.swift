//
//  DrawerMenuViewModel.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 11/29/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import RxSwift

class DrawerMenuViewModel {
    
    private let disposeBag = DisposeBag()
    private let sessionService: SessionService
    private let dataManager: DataManager
    
    let didSelectScreen = BehaviorSubject(value: DrawerMenuScreen.settings)
    
    let menuItems = Observable.just([
        "Recommended",
        "Dashboard",
        "Settings"
    ])
    
    init(sessionService: SessionService, dataManager: DataManager) {
        self.sessionService = sessionService
        self.dataManager = dataManager
    }
}