package res

import "list"

#aws_signer_signing_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_signer_signing_job")
	close({
		completed_at?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		created_at?:                 string
		id?:                         string
		ignore_signing_job_failure?: bool
		job_id?:                     string
		job_invoker?:                string
		job_owner?:                  string
		platform_display_name?:      string
		platform_id?:                string
		destination!: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		source!: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		profile_name!:    string
		profile_version?: string
		requested_by?:    string
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
		status?:        string
		status_reason?: string
	})

	#destination: close({
		s3!: matchN(1, [_#defs."/$defs/destination/$defs/s3", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination/$defs/s3"]])
	})

	#source: close({
		s3!: matchN(1, [_#defs."/$defs/source/$defs/s3", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source/$defs/s3"]])
	})

	_#defs: "/$defs/destination/$defs/s3": close({
		bucket!: string
		prefix?: string
	})

	_#defs: "/$defs/source/$defs/s3": close({
		bucket!:  string
		key!:     string
		version!: string
	})
}
