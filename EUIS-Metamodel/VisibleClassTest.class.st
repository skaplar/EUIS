Class {
	#name : #VisibleClassTest,
	#superclass : #TestCase,
	#category : #'EUIS-Metamodel-Test'
}

{ #category : #tests }
VisibleClassTest >> testInitializeVisibleClass [

| v |

v := VisibleClass new
	addVisibleElement: (VisibleProperty columnLabel: 'ime' component: 'textField');
	addVisibleElement: (VisibleProperty columnLabel: 'prezime' component: 'textField');
	yourself.

self assert: v visibleElements size equals: 2
]
