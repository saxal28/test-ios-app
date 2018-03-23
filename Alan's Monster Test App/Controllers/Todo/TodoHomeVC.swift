//
//  TodoHomeVC.swift
//  Alan's Monster Test App
//
//  Created by alan on 3/21/18.
//  Copyright © 2018 alan. All rights reserved.
//

import UIKit


protocol TodoHomeVCDelegate {
    
    func getNoteCount(count: Int)
    
}


class TodoHomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let Service = NoteService.instance
    
    var delegate: TodoHomeVCDelegate?
    
    var numberChanged = 0;

    
    //=====================================================
    //MARK: IBOutlets
    //=====================================================
    
    
    @IBOutlet weak var notesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notesTable.delegate = self
        notesTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    //=====================================================
    //MARK: IBActions
    //=====================================================
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        showAddNoteModal()
    }

    
    
    //=====================================================
    //MARK: Table Functions
    //=====================================================
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Service.getNotes().count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = notesTable.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as! NoteTableCell
        
        let notes = Service.getNotes()
        cell.noteTitle.text = notes[indexPath.row].title
        
        return cell
    }
    
    
    //=====================================================
    //MARK: Add Note Functions
    //=====================================================
    
    
    func showAddNoteModal() {
        let alert = UIAlertController(title: "Add Note", message: "Add A Note Here", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "Note Reminder Here"
        }
        
        alert.addAction(UIAlertAction(title: "Add Note", style: .default, handler: { [weak alert] (_) in
            let noteTitle = alert!.textFields![0].text!
            let newNote = Note(noteTitle: noteTitle, noteBody: "")
            self.addNote(note: newNote)
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func addNote(note: Note) {
        Service.saveNote(note: note);
        delegate?.getNoteCount(count: Service.getNotes().count)
        notesTable.reloadData()
    }


}
