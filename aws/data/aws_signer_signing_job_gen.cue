package data

#aws_signer_signing_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_signer_signing_job")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		completed_at?:          string
		created_at?:            string
		id?:                    string
		job_id!:                string
		job_invoker?:           string
		job_owner?:             string
		platform_display_name?: string
		platform_id?:           string
		profile_name?:          string
		profile_version?:       string
		requested_by?:          string
		revocation_record?: [...close({
			reason?:     string
			revoked_at?: string
			revoked_by?: string
		})]
		signature_expires_at?: string
		signed_object?: [...close({
			s3?: [...close({
				bucket?: string
				key?:    string
			})]
		})]
		source?: [...close({
			s3?: [...close({
				bucket?:  string
				key?:     string
				version?: string
			})]
		})]
		status?:        string
		status_reason?: string
	})
}
