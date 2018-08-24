Class {
	#name : #VisibleClass,
	#superclass : #VisibleElement,
	#instVars : [
		'visibleClassName',
		'modal',
		'visibleElements'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #adding }
VisibleClass >> addVisibleElement: visibleElement [

 visibleElements add: visibleElement
]

{ #category : #initialization }
VisibleClass >> initialize [

	super initialize.
	visibleElements := OrderedCollection new.
]

{ #category : #accessing }
VisibleClass >> modal [
	^ modal
]

{ #category : #accessing }
VisibleClass >> modal: anObject [

	modal := anObject 
]

{ #category : #accessing }
VisibleClass >> visibleClassName [
	^ visibleClassName
]

{ #category : #accessing }
VisibleClass >> visibleClassName: anObject [
	visibleClassName := anObject 
]

{ #category : #accessing }
VisibleClass >> visibleElements [
	^ visibleElements
]
