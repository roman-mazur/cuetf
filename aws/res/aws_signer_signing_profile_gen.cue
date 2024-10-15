package res

import "list"

#aws_signer_signing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_signer_signing_profile")
	arn?:                   string
	id?:                    string
	name?:                  string
	name_prefix?:           string
	platform_display_name?: string
	platform_id!:           string
	revocation_record?: [...{
		revocation_effective_from?: string
		revoked_at?:                string
		revoked_by?:                string
	}]
	status?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?:     string
	version_arn?: string
	signature_validity_period?: #signature_validity_period | list.MaxItems(1) & [...#signature_validity_period]
	signing_material?: #signing_material | list.MaxItems(1) & [...#signing_material]

	#signature_validity_period: {
		type!:  string
		value!: number
	}

	#signing_material: certificate_arn!: string
}
