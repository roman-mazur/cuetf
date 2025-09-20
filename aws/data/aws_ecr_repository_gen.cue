package data

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_repository")
	close({
		arn?: string
		encryption_configuration?: [...close({
			encryption_type?: string
			kms_key?:         string
		})]
		id?: string
		image_scanning_configuration?: [...close({
			scan_on_push?: bool
		})]
		image_tag_mutability?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		image_tag_mutability_exclusion_filter?: [...close({
			filter?:      string
			filter_type?: string
		})]
		most_recent_image_tags?: [...string]
		name!:           string
		registry_id?:    string
		repository_url?: string
		tags?: [string]: string
	})
}
