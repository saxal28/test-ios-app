//
//  NoteService.swift
//  Alan's Monster Test App
//
//  Created by alan on 3/22/18.
//  Copyright © 2018 alan. All rights reserved.
//

import Foundation


class NoteService {
    
    // variables
    var notes = [Note]()

    
    // singleton
    static let instance = NoteService()
    
    
    // methods
    func loadNotes(){
        // loads notes from storage
    }
    
    func getNotes() -> Array<Note> {
        // gets notes when needed
        return notes
    }
    
        // saves notes to collection / local storage
    func saveNote(note: Note){
        notes.append(note)
        // TODO: save to plist
    }
    
}
