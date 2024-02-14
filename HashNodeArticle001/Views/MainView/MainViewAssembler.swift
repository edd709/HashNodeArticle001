//
//  MainViewAssembler.swift
//  HashNodeArticle001
//
//  Created by Erio Daniel Díaz on 13/02/2024.
//

import SwiftUI

struct MainViewAssembler {
	// we disable the default constructor so it cannot be invoked from the structure
	private init() {}
	
	/*
	 we define a static method that can be invoked without needing instantiation and
	 is capable of returning a view.
	 */
	static func create() -> some View {
		
		// we create a parameter package specific to the viewmodel
		let viewModelParams: MainViewModel.Params = .init (
			myParameter01: true,
			myParameter02: 10
		)
		// we create a view model and parameterize it with the package we just created.
		let viewModel = MainViewModel(params: viewModelParams)
		
		/*
		 we create an instance of the view parameterized with the instance of the
		 view model we just created
		 */
		let view = MainView(viewModel: viewModel)
		
		// finally, we return the fully assembled view
		return view
	}
}
