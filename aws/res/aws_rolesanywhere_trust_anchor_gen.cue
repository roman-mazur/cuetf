package res

import "list"

#aws_rolesanywhere_trust_anchor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rolesanywhere_trust_anchor")
	arn?:     string
	enabled?: bool
	id?:      string
	name!:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	notification_settings?: #notification_settings | list.MaxItems(50) & [...#notification_settings]
	source?: #source | list.MaxItems(1) & [_, ...] & [...#source]

	#notification_settings: {
		channel?:       string
		configured_by?: string
		enabled?:       bool
		event?:         string
		threshold?:     number
	}

	#source: {
		source_type!: string
		source_data?: #source.#source_data | list.MaxItems(1) & [_, ...] & [...#source.#source_data]

		#source_data: {
			acm_pca_arn?:           string
			x509_certificate_data?: string
		}
	}
}
