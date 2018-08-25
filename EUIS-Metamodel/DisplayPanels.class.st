"
I am a class taht contants all the forms that need to be created and contain the concrete model.

Internal Representation and Key Implementation Points.

    Instance Variables
	forms:		<Object>


    Implementation Points
"
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
							addVisibleElement: (VisibleProperty columnLabel: 'ime' component: TextFieldComponent new);
							addVisibleElement: (VisibleProperty columnLabel: 'prezime' component: TextFieldComponent new)
							);
	addStandardPanel: ((StandardPanel persistentClass: (PersistentClass identifier: 2 unique: true identity: 2 ) visibleClassName: 'Magacin'  modal: true )
							addVisibleElement: (VisibleProperty columnLabel: 'nazivMagacina' component: TextFieldComponent new)
							);
	addStandardPanel: ((StandardPanel persistentClass: (PersistentClass identifier: 3 unique: true identity: 3 ) visibleClassName: 'Roba'  modal: true )
							addVisibleElement: (VisibleProperty columnLabel: 'nazivArtikla' component: TextFieldComponent new);
							addVisibleElement: (VisibleProperty columnLabel: 'cenaArtikla' component: TextFieldComponent new)
							)
	
]
