Class {
	#name : #BaselineOfLlm4Lsc,
	#superclass : #BaselineOf,
	#category : #BaselineOfLlm4Lsc
}

{ #category : #loading }
BaselineOfLlm4Lsc class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'llm4lsc' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]			
]

{ #category : #baseline }
BaselineOfLlm4Lsc >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Llm4Lsc'
		]
]
