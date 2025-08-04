package res

import "list"

#elasticstack_kibana_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_security_role")
	close({
		elasticsearch?: matchN(1, [#elasticsearch, list.MaxItems(1) & [_, ...] & [...#elasticsearch]])
		description?: string
		id?:          string
		metadata?:    string
		name!:        string
		kibana?: matchN(1, [#kibana, [...#kibana]])
	})

	#elasticsearch: close({
		indices?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/indices", [..._#defs."/$defs/elasticsearch/$defs/indices"]])
		remote_indices?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/remote_indices", [..._#defs."/$defs/elasticsearch/$defs/remote_indices"]])
		cluster?: [...string]
		run_as?: [...string]
	})

	#kibana: close({
		feature?: matchN(1, [_#defs."/$defs/kibana/$defs/feature", [..._#defs."/$defs/kibana/$defs/feature"]])
		base?: [...string]
		spaces!: [...string]
	})

	_#defs: "/$defs/elasticsearch/$defs/indices": close({
		field_security?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch/$defs/indices/$defs/field_security"]])
		names!: [...string]
		privileges!: [...string]
		query?: string
	})

	_#defs: "/$defs/elasticsearch/$defs/indices/$defs/field_security": close({
		except?: [...string]
		grant?: [...string]
	})

	_#defs: "/$defs/elasticsearch/$defs/remote_indices": close({
		field_security?: matchN(1, [_#defs."/$defs/elasticsearch/$defs/remote_indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch/$defs/remote_indices/$defs/field_security"]])
		clusters!: [...string]
		names!: [...string]
		privileges!: [...string]
		query?: string
	})

	_#defs: "/$defs/elasticsearch/$defs/remote_indices/$defs/field_security": close({
		except?: [...string]
		grant?: [...string]
	})

	_#defs: "/$defs/kibana/$defs/feature": close({
		name!: string
		privileges!: [...string]
	})
}
