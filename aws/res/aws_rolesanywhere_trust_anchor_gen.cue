package res

import "list"

#aws_rolesanywhere_trust_anchor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rolesanywhere_trust_anchor")
	close({
		arn?:     string
		enabled?: bool
		notification_settings?: matchN(1, [#notification_settings, list.MaxItems(50) & [...#notification_settings]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		id?:   string
		name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#notification_settings: close({
		channel?:       string
		configured_by?: string
		enabled?:       bool
		event?:         string
		threshold?:     number
	})

	#source: close({
		source_type!: string
		source_data?: matchN(1, [_#defs."/$defs/source/$defs/source_data", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source/$defs/source_data"]])
	})

	_#defs: "/$defs/source/$defs/source_data": close({
		acm_pca_arn?:           string
		x509_certificate_data?: string
	})
}
