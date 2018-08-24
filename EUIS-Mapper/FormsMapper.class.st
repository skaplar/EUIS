Class {
	#name : #FormsMapper,
	#superclass : #Object,
	#instVars : [
		'expectedForms'
	],
	#category : #'EUIS-Mapper'
}

{ #category : #accessing }
FormsMapper >> expectedForms [
	^ expectedForms 
]

{ #category : #accessing }
FormsMapper >> expectedForms: anObject [
	expectedForms := anObject
]

{ #category : #accessing }
FormsMapper >> generateForms [

	expectedForms do: [ :each | | f | (f := FormsGenerator form: each) generateForm; generateMagritteMethods ]
]

{ #category : #accessing }
FormsMapper >> iterateThroughForms [

	expectedForms do: [ :each | Transcript show: each visibleClassName ]
]
