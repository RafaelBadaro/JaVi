//
//  CommentListRow.swift
//  JaVi
//
//  Created by Rafael Badaró on 04/08/23.
//

import SwiftUI

struct CommentListRow: View {
    
    var comment: Comment
    
    var body: some View {
        HStack{
            Text(comment.user + " Said:")
                .foregroundColor(Color.white)
            Spacer()
            Text(comment.content)
                .foregroundColor(Color.white)
        }
    }
}

struct CommentListRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentListRow(comment: DataService().getComments()[0]).background(Color.black)
    }
}
