package data

#aws_signer_signing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_signer_signing_profile")
	close({
		arn?:                   string
		id?:                    string
		name!:                  string
		platform_display_name?: string
		platform_id?:           string
		region?:                string
		revocation_record?: [...close({
			revocation_effective_from?: string
			revoked_at?:                string
			revoked_by?:                string
		})]
		signature_validity_period?: [...close({
			type?:  string
			value?: number
		})]
		status?: string
		tags?: [string]: string
		version?:     string
		version_arn?: string
	})
}
