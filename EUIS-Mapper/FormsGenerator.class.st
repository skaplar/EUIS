"
This class generates Magritte forms.

Internal Representation and Key Implementation Points.

    Instance Variables
	form:		<Object> -> form from the EUIS metamodel to be generated
	generatedClass:		<Object> -> class that is already generated and needs to hold rest of the data


    Implementation Points
"
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
FormsGenerator >> generateMaDescription: element [
	generatedClass
		compile:
			'description' , element label asString , String cr , String tab , '<magritteDescription>' , String cr , String tab
				, element component magritteComponentDescription , String cr , 'accessor: #' , element label asString , ';' , 'label: '''
				, element label asString , ''';' , 'priority: 70;' , 'yourself'
]

{ #category : #accessing }
FormsGenerator >> generateMagritteMethods [
	form visibleElements
		do: [ :element | self generateMaDescription: element ]
]

{ #category : #accessing }
FormsGenerator >> generatedClass [
	^ generatedClass 
]

{ #category : #accessing }
FormsGenerator >> generatedClass: aGeneratedClass [
	generatedClass := aGeneratedClass
	
]
