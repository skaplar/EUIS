Class {
	#name : #VisibleElement,
	#superclass : #Object,
	#instVars : [
		'label',
		'component',
		'visible'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #action }
VisibleElement >> beVisible [
	self visible: true
]

{ #category : #accessing }
VisibleElement >> component [
	^component
]

{ #category : #accessing }
VisibleElement >> component:  anObject [
	component := anObject
]

{ #category : #action }
VisibleElement >> isVisible [
	^ self visible
]

{ #category : #accessing }
VisibleElement >> label [
	^ label
]

{ #category : #accessing }
VisibleElement >> label:  anObject [
	label := anObject
]

{ #category : #action }
VisibleElement >> notVisible [
	self visible: false
]

{ #category : #accessing }
VisibleElement >> visible [
	^ visible
]

{ #category : #accessing }
VisibleElement >> visible:  anObject [
	visible := anObject
]
