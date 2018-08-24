Class {
	#name : #FormsGenerator,
	#superclass : #Object,
	#instVars : [
		'form',
		'generatedClass'
	],
	#category : #'EUIS-Mapper'
}

{ #category : #accessing }
FormsGenerator class >> form: aForm [

	^ self new 
	form: aForm;
	yourself 
]

{ #category : #accessing }
FormsGenerator >> form [
	^ form
]

{ #category : #accessing }
FormsGenerator >> form: anObject [
	form := anObject 
]

{ #category : #accessing }
FormsGenerator >> generateForm [

	| newClass |
	newClass := Object subclass: form visibleClassName asString instanceVariableNames: self generateInstanceVariables classVariableNames: '' package: 'EUIS-Proba'.
	self generatedClass: newClass.
	^ newClass.
]

{ #category : #accessing }
FormsGenerator >> generateInstanceVariables [
	| temp |
	temp := String new.
	form visibleElements do: [ :element | temp := temp , element label asString , ' ' ].
	^ temp
]

{ #category : #accessing }
FormsGenerator >> generateMaDescription: label [
	generatedClass
		compile:
			'description' , label asString , String cr , String tab , '<magritteDescription>' , String cr , String tab
				, '^ MAStringDescription new' , String cr, 'accessor: #' , label asString , ';' , 'label: ''' , label asString , ''';'
				, 'priority: 70;', 'yourself'
]

{ #category : #accessing }
FormsGenerator >> generateMagritteMethods [
	form visibleElements
		do: [ :element | self generateMaDescription: element label ]
]

{ #category : #accessing }
FormsGenerator >> generatedClass [
	^ generatedClass 
]

{ #category : #accessing }
FormsGenerator >> generatedClass: aGeneratedClass [
	generatedClass := aGeneratedClass
	
]
