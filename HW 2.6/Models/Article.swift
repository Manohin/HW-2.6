//
//  Article.swift
//  HW 2.6
//
//  Created by Alexey Manokhin on 27.11.2023.
//

import Foundation

struct Article {
    let id = UUID()
    let name: String
    let body: String
    let image: String
    
    static func getArticles() -> [Article] {
        [
            Article(name: "Имя пользователя 1", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend leo id magna faucibus eleifend. Vestibulum sed feugiat lorem. Curabitur at purus et tortor imperdiet lobortis quis vitae turpis. In mi est, tincidunt quis ipsum in, consequat consectetur dui. Nullam ac maximus est. Etiam convallis sagittis nulla, vel vulputate quam convallis ut. Pellentesque sit amet leo at ipsum lacinia volutpat ultrices non sem. Donec lacinia eu magna a venenatis.", image: "1"),
            Article(name: "Имя пользователя 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dictum sapien porttitor enim mollis, ac elementum elit blandit. Donec faucibus nunc lacus, efficitur malesuada est vulputate nec. Pellentesque laoreet varius iaculis. Sed finibus risus ac luctus rutrum. Suspendisse eget vulputate justo. Praesent ac augue sed leo iaculis molestie quis vitae ante. Aenean aliquet metus quis bibendum ultrices. Vestibulum nibh turpis, dapibus nec interdum eget, rhoncus ac eros. Duis ipsum eros, lobortis vel rutrum non, commodo at dolor. Aenean sem massa, ultricies sit amet ex sed, ultricies commodo libero. Aliquam erat volutpat. Ut libero justo, ultrices quis porta vitae, sodales eu nisl. Quisque nec lectus non eros auctor porta ut id orci. Morbi ornare interdum est ac egestas. Proin viverra posuere magna vel porta. In congue est iaculis tellus consectetur, nec luctus metus varius. Aliquam erat volutpat. Aenean at egestas eros. Suspendisse scelerisque ante odio, ut hendrerit libero sollicitudin in. Integer fermentum efficitur mattis. Proin ut eros et nisi suscipit viverra non ut dolor. Aliquam justo diam, ornare dapibus lobortis eget, pulvinar ut nibh.", image: "2"),
            Article(name: "Имя пользователя 3", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices nibh sit amet sapien malesuada, quis iaculis ipsum tristique. Curabitur id placerat nunc, eget condimentum elit. Quisque lacus ex, congue nec lacinia et, ornare vel nulla. Curabitur convallis efficitur nisl a fermentum. Aenean sapien sapien, tristique vel risus sed, varius porttitor mauris. Nulla tempor urna tristique est iaculis, quis feugiat arcu commodo. Mauris viverra cursus nisi at convallis. Phasellus vitae interdum quam. Mauris et mollis ligula, eu ultrices turpis. Quisque id felis non ligula dictum commodo. Mauris eu ligula rhoncus, lobortis orci nec, dignissim est. Etiam enim risus, dictum vitae magna nec, varius pharetra nibh. Morbi sit amet purus sed urna feugiat aliquam. Quisque eget dolor quis nisl imperdiet suscipit. Proin non aliquet sapien, vitae varius lectus. Vestibulum iaculis felis sed est finibus ullamcorper. Morbi at elit ipsum. Integer ultricies erat vitae nunc sagittis ultrices. Aenean vitae rhoncus eros. Maecenas ut nisl hendrerit tortor vehicula posuere. Phasellus malesuada mi ac nunc lacinia, vitae pellentesque purus accumsan. In vitae ex augue. Ut euismod maximus lacus, ac ornare tellus. Aenean vitae velit auctor, suscipit ante eget, consectetur orci. Donec arcu sem, vulputate vitae efficitur semper, facilisis ut eros. Proin dapibus nec ex nec scelerisque. Nam dui lectus, suscipit eu fermentum sit amet, bibendum eu sapien. Aenean magna lectus, eleifend at purus in, tempus viverra dui. Nam non consectetur est, euismod consequat nisl. Cras congue enim odio, sit amet efficitur diam fermentum id. Duis auctor lacus at libero vehicula maximus. Ut porttitor sapien id diam sagittis malesuada. Suspendisse urna lacus, tempor in elementum vitae, efficitur vitae magna. In vel est malesuada, aliquam velit.", image: "1"),
            Article(name: "Имя пользователя 4", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices nibh sit amet sapien malesuada, quis iaculis ipsum tristique.", image: "2"),
            Article(name: "Имя пользователя 5", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices nibh sit amet sapien malesuada, quis iaculis ipsum tristique. Curabitur id placerat nunc, eget condimentum elit. Quisque lacus ex, congue nec lacinia et, ornare vel nulla. Curabitur convallis efficitur nisl a fermentum. Aenean sapien sapien, tristique vel risus sed, varius porttitor mauris. Nulla tempor urna tristique est iaculis, quis feugiat arcu commodo. Mauris viverra cursus nisi at convallis. Phasellus vitae interdum quam. Mauris et mollis ligula, eu ultrices turpis. Quisque id felis non ligula dictum commodo. Mauris eu ligula rhoncus, lobortis orci nec, dignissim est. Etiam enim risus, dictum vitae magna nec, varius pharetra nibh. Morbi sit amet purus sed urna feugiat aliquam. Quisque eget dolor quis nisl imperdiet suscipit. Proin non aliquet sapien, vitae varius lectus. Vestibulum iaculis felis sed est finibus ullamcorper. Morbi at elit ipsum. Integer ultricies erat vitae nunc sagittis ultrices. Aenean vitae rhoncus eros.", image: "1"),
            Article(name: "Имя пользователя 6", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices nibh sit amet sapien malesuada, quis iaculis ipsum tristique. Curabitur id placerat nunc, eget condimentum elit. Quisque lacus ex, congue nec lacinia et, ornare vel nulla. Curabitur convallis efficitur nisl a fermentum. Aenean sapien sapien, tristique vel risus sed, varius porttitor mauris. Nulla tempor urna tristique est iaculis, quis feugiat arcu commodo. Mauris viverra cursus nisi at convallis. Phasellus vitae interdum quam. Mauris et mollis ligula, eu ultrices turpis. Quisque id felis non ligula dictum commodo. Mauris eu ligula rhoncus, lobortis orci nec, dignissim est. ", image: "2"),
            Article(name: "Имя пользователя 7", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "1"),
            Article(name: "Имя пользователя 8", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ultrices nibh sit amet sapien malesuada, quis iaculis ipsum tristique. Curabitur id placerat nunc, eget condimentum elit. Quisque lacus ex, congue nec lacinia et, ornare vel nulla. Curabitur convallis efficitur nisl a fermentum. Aenean sapien sapien, tristique vel risus sed, varius porttitor mauris. Nulla tempor urna tristique est iaculis, quis feugiat arcu commodo. Mauris viverra cursus nisi at convallis. Phasellus vitae interdum quam. Mauris et mollis ligula, eu ultrices turpis. Quisque id felis non ligula dictum commodo. Mauris eu ligula rhoncus, lobortis orci nec, dignissim est. Etiam enim risus, dictum vitae magna nec, varius pharetra nibh. Morbi sit amet purus sed urna feugiat aliquam. Quisque eget dolor quis nisl imperdiet suscipit. Proin non aliquet sapien, vitae varius lectus. Vestibulum iaculis felis sed est finibus ullamcorper. Morbi at elit ipsum. Integer ultricies erat vitae nunc sagittis ultrices.", image: "2")
        ]
    }
}
