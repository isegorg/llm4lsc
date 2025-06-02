Class {
	#name : #BaselineOfLlm4Lsc,
	#superclass : #BaselineOf,
	#category : #BaselineOfLlm4Lsc
}

{ #category : #baseline }
BaselineOfLlm4Lsc >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Llm4Lsc'
		]
]
