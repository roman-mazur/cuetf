package res

import "list"

#aws_signer_signing_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_signer_signing_profile")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		id?:                    string
		name?:                  string
		name_prefix?:           string
		platform_display_name?: string
		platform_id!:           string
		signature_validity_period?: matchN(1, [#signature_validity_period, list.MaxItems(1) & [...#signature_validity_period]])
		signing_material?: matchN(1, [#signing_material, list.MaxItems(1) & [...#signing_material]])
		revocation_record?: [...close({
			revocation_effective_from?: string
			revoked_at?:                string
			revoked_by?:                string
		})]
		signing_parameters?: [string]: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?:     string
		version_arn?: string
	})

	#signature_validity_period: close({
		type!:  string
		value!: number
	})

	#signing_material: close({
		certificate_arn!: string
	})
}
