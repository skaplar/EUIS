"
I am the root property for all other types of properties. 
Most of the behavior is set here, while other specifics are set through descendants.

    Instance Variables
	autoGo:		<Object>
	columnLabel:		<Object>
	default:		<Object>
	disabled:		<Object>
	displayFormat:		<Object>
	representative:		<Object>


    Implementation Points
"
Class {
	#name : #VisibleProperty,
	#superclass : #VisibleElement,
	#instVars : [
		'columnLabel',
		'displayFormat',
		'representative',
		'autoGo',
		'disabled',
		'default'
	],
	#category : #'EUIS-Metamodel'
}

{ #category : #'instance creation' }
VisibleProperty class >> columnLabel: aColumnLabel [

	^ self new 
		columnLabel: aColumnLabel;
		displayFormat: 'text';
		representative: false;
		autoGo: false;
		disabled: false;
		default: false;
		yourself
]

{ #category : #'instance creation' }
VisibleProperty class >> columnLabel: aColumnLabel component: aComponent [

	^ self new 
		columnLabel: aColumnLabel;
		displayFormat: 'text';
		representative: false;
		autoGo: false;
		disabled: false;
		default: false;
		label: aColumnLabel;
		component: aComponent;
		visible: true;
		yourself
]

{ #category : #'instance creation' }
VisibleProperty class >> columnLabel: aColumnLabel visibleElement: aVisibleElement [

	^ self new 
		columnLabel: aColumnLabel;
		displayFormat: 'text';
		representative: false;
		autoGo: false;
		disabled: false;
		default: false;
		yourself
]

{ #category : #accessing }
VisibleProperty >> autoGo [ 

	^autoGo
]

{ #category : #accessing }
VisibleProperty >> autoGo: anObject [

	autoGo := anObject
]

{ #category : #accessing }
VisibleProperty >> columnLabel [ 

	^columnLabel 
]

{ #category : #accessing }
VisibleProperty >> columnLabel: anObject [

	columnLabel := anObject 
]

{ #category : #accessing }
VisibleProperty >> default [

	^default
]

{ #category : #accessing }
VisibleProperty >> default: anObject [

	default := anObject 
]

{ #category : #accessing }
VisibleProperty >> disabled [

	^disabled
]

{ #category : #accessing }
VisibleProperty >> disabled: anObject [

	disabled := anObject 
]

{ #category : #accessing }
VisibleProperty >> displayFormat [ 

	^displayFormat 
]

{ #category : #accessing }
VisibleProperty >> displayFormat: anObject [

	displayFormat  := anObject 
]

{ #category : #accessing }
VisibleProperty >> representative [

	^representative 
]

{ #category : #accessing }
VisibleProperty >> representative: anObject [

	representative  := anObject 
]
