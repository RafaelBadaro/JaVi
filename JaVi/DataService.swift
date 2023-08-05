//
//  DataService.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import Foundation
struct DataService{
    func getData() -> [Movie]{
        return  [Movie(title: "Oppenheimer", image: "oppie", rating: 10,
                       description: "Oppenheimer (/ˈɒpənhaɪmər/ OP-ən-hy-mər) is a 2023 epic biographical thriller film written and directed by Christopher Nolan. Based on the 2005 biography American Prometheus by Kai Bird and Martin J. Sherwin, the film chronicles the career of American theoretical physicist J. Robert Oppenheimer." , comments: []),
                 Movie(title: "Barbie", image: "no tengo", rating: 8,
                       description: "Set in the colorful Barbie Land, stereotypical Barbie lives a perfect life every single day. One day, she shows signs of being...a human. She decides to go to the Real World to find the cure in order to make herself perfect again.",
                       comments: [])
        ]
    }
}
