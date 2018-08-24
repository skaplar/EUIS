Class {
	#name : #StandardPanel,
	#superclass : #VisibleClass,
	#instVars : [
		'persistentClass'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #'instance creation' }
StandardPanel class >> persistentClass: aPersistentClass visibleClassName: aVisibleClassName modal: aModal [
	^ self new
		persistentClass: aPersistentClass;
		visibleClassName: aVisibleClassName;
		modal: aModal;
		yourself
]

{ #category : #'instance creation' }
StandardPanel class >> title: aTitle text: aText [ 
	^ self new
		title: aTitle;
		text: aText;
		yourself
]

{ #category : #initialization }
StandardPanel >> initialize [

	super initialize.
	persistentClass := PersistentClass new.
	
	
]

{ #category : #accesing }
StandardPanel >> persistentClass [

	^persistentClass
]

{ #category : #accesing }
StandardPanel >> persistentClass: anObject [

	persistentClass := anObject 
]
