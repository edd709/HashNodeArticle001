//
//  MainViewModel.swift
//  HashNodeArticle001
//
//  Created by Erio Daniel Díaz on 13/02/2024.
//

import Foundation

class MainViewModel: ObservableObject {
	@Published var myParameter01: Bool
	@Published var myParameter02: Int
	// new published vars here ...
	
	init(params: Params) {
		self.myParameter01 = params.myParameter01
		self.myParameter02 = params.myParameter02
	}
}

// an extension is used to create the structure intended for parameter handling
extension MainViewModel {
	struct Params {
		let myParameter01: Bool
		let myParameter02: Int
		// new parameters here ...
		
		/*
		 The parameter structure's initializer takes the parameters and assigns
		 them as properties of the structure itself. It's crucial that the
		 parameters are exhaustively declared beforehand, and ideally, each
		 should have a default value.
		 */
		init(myParameter01: Bool = false, myParameter02: Int = 0) {
			self.myParameter01 = myParameter01
			self.myParameter02 = myParameter02
		}
	}
}
