"
I am class that needs to be persisted to db.

    Instance Variables
	identifier:		<Object>
	identity:		<Object>
	unique:		<Object>


    Implementation Points
"
Class {
	#name : #PersistentClass,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'unique',
		'identity'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #initialization }
PersistentClass class >> identifier: aIdentifer unique: anUnique identity: anIdentity [

^ self new 
	identifier: aIdentifer;
	unique: anUnique;
	identity: anIdentity;
	yourself
]

{ #category : #accessing }
PersistentClass >> identifier [

	^identifier 
]

{ #category : #accessing }
PersistentClass >> identifier: anObject [

	identifier := anObject 
]

{ #category : #accessing }
PersistentClass >> identity [

	^identity
]

{ #category : #accessing }
PersistentClass >> identity: anObject [

	identity := anObject 
]

{ #category : #accessing }
PersistentClass >> unique [

	^unique
]

{ #category : #accessing }
PersistentClass >> unique: anObject [

	unique := anObject 
]
