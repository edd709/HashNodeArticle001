//
//  MainView.swift
//  HashNodeArticle001
//
//  Created by Erio Daniel Díaz on 13/02/2024.
//

import SwiftUI

struct MainView: View {
	// observed instance of an observable view model
	@ObservedObject var viewModel: MainViewModel
	
	// view initializer
	init(viewModel: MainViewModel) {
		self.viewModel = viewModel
	}
	
    var body: some View {
		ZStack {
			Color.chalkWhite01.ignoresSafeArea(.all)
			VStack {
				Text("Main View")
					.font(.system(size: UIScreen.main.bounds.width * 0.10, weight: .medium))
					.foregroundStyle(Color.matteBlack01)
				
				Spacer()
			}
		}
    }
}

#Preview {
	MainViewAssembler.create()
}
