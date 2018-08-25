"
This class hold the forms that need to be mapped to concrete model (magritte for now).
Task of this class is to iterate through the given forms and perform generation for all of them. 

Internal Representation and Key Implementation Points.

    Instance Variables
	expectedForms:		<Object> 


    Implementation Points
"
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
