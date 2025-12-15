package data

#aws_imagebuilder_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_imagebuilder_image")
	close({
		arn!:                  string
		build_version_arn?:    string
		container_recipe_arn?: string
		date_created?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		distribution_configuration_arn?:  string
		enhanced_image_metadata_enabled?: bool
		id?:                              string
		image_recipe_arn?:                string
		image_scanning_configuration?: [...close({
			ecr_configuration?: [...close({
				container_tags?: [...string]
				repository_name?: string
			})]
			image_scanning_enabled?: bool
		})]
		image_tests_configuration?: [...close({
			image_tests_enabled?: bool
			timeout_minutes?:     number
		})]
		infrastructure_configuration_arn?: string
		name?:                             string
		os_version?:                       string
		output_resources?: [...close({
			amis?: [...close({
				account_id?:  string
				description?: string
				image?:       string
				name?:        string
				region?:      string
			})]
			containers?: [...close({
				image_uris?: [...string]
				region?: string
			})]
		})]
		platform?: string
		tags?: [string]: string
		version?: string
	})
}
