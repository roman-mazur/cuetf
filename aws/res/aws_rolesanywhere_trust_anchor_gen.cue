package res

import "list"

#aws_rolesanywhere_trust_anchor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_rolesanywhere_trust_anchor")
	close({
		notification_settings?: matchN(1, [#notification_settings, list.MaxItems(50) & [...#notification_settings]])
		arn?:     string
		enabled?: bool
		id?:      string
		name!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
	})

	#notification_settings: close({
		channel?:       string
		configured_by?: string
		enabled?:       bool
		event?:         string
		threshold?:     number
	})

	#source: close({
		source_data!: matchN(1, [_#defs."/$defs/source/$defs/source_data", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source/$defs/source_data"]])
		source_type!: string
	})

	_#defs: "/$defs/source/$defs/source_data": close({
		acm_pca_arn?:           string
		x509_certificate_data?: string
	})
}
