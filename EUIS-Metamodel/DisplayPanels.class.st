Class {
	#name : #DisplayPanels,
	#superclass : #Object,
	#instVars : [
		'forms'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #initialization }
DisplayPanels class >> createDemoForms [

	self 
	addStandardPanel: (StandardPanel persistentClass: (PersistentClass identifier: 1 unique: true identity: 1 ) visbleClassName: 'Radnik'  modal: true );
	addStandardPanel: (StandardPanel persistentClass: (PersistentClass identifier: 2 unique: true identity: 2 ) visbleClassName: 'Magacin'  modal: true );
	addStandardPanel: (StandardPanel persistentClass: (PersistentClass identifier: 3 unique: true identity: 3 ) visbleClassName: 'Roba'  modal: true )
	
]

{ #category : #initialization }
DisplayPanels >> addStandardPanel: panel [

	forms add: panel.
]

{ #category : #accessing }
DisplayPanels >> forms [

	^forms
]

{ #category : #accessing }
DisplayPanels >> forms: anObject [

	forms := anObject 
]

{ #category : #initialization }
DisplayPanels >> initialize [

	super initialize.
	forms := OrderedCollection new.
]

{ #category : #initialization }
DisplayPanels >> instanceCreateDemoForms [

	self 
	addStandardPanel: ((StandardPanel persistentClass: (PersistentClass identifier: 1 unique: true identity: 1 ) visibleClassName: 'Radnik'  modal: true )
							addVisibleElement: (VisibleProperty columnLabel: 'ime' component: 'textField');
							addVisibleElement: (VisibleProperty columnLabel: 'prezime' component: 'textField')
							);
	addStandardPanel: ((StandardPanel persistentClass: (PersistentClass identifier: 2 unique: true identity: 2 ) visibleClassName: 'Magacin'  modal: true )
							addVisibleElement: (VisibleProperty columnLabel: 'nazivMagacina' component: 'textField')
							);
	addStandardPanel: ((StandardPanel persistentClass: (PersistentClass identifier: 3 unique: true identity: 3 ) visibleClassName: 'Roba'  modal: true )
							addVisibleElement: (VisibleProperty columnLabel: 'nazivArtikla' component: 'textField');
							addVisibleElement: (VisibleProperty columnLabel: 'cenaArtikla' component: 'textField')
							)
	
]
