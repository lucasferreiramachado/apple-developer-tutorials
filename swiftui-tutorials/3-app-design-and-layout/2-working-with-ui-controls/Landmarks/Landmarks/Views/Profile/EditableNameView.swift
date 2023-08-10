//
//  EditableNameView.swift
//  Landmarks
//
//  Created by Lucas Ferreira Machado on 10/08/23.
//

import SwiftUI

struct EditableNameView: View {
    
    @Environment(\.editMode) var mode
    @State var name = ""
    var body: some View {
        TextField("Name", text: $name)
            .disabled(mode?.wrappedValue == .inactive)
    }
}

struct EditableNameView_Previews: PreviewProvider {
    static var previews: some View {
        EditableNameView()
    }
}
