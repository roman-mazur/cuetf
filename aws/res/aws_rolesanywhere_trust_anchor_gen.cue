package res

import "list"

#aws_rolesanywhere_trust_anchor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rolesanywhere_trust_anchor")
	arn?:     string
	enabled?: bool
	id?:      string
	name:     string
	tags?: [string]: string
	tags_all?: [string]: string
	source?: #source | list.MaxItems(1) & [_, ...] & [...#source]

	#source: {
		source_type:  string
		source_data?: #source.#source_data | list.MaxItems(1) & [_, ...] & [...#source.#source_data]

		#source_data: {
			acm_pca_arn?:           string
			x509_certificate_data?: string
		}
	}
}
