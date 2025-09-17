package data

#aws_imagebuilder_container_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_container_recipe")
	close({
		arn!: string
		component?: [...close({
			component_arn?: string
			parameter?: [...close({
				name?:  string
				value?: string
			})]
		})]
		container_type?:           string
		date_created?:             string
		description?:              string
		dockerfile_template_data?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		encrypted?: bool
		id?:        string
		instance_configuration?: [...close({
			block_device_mapping?: [...close({
				device_name?: string
				ebs?: [...close({
					delete_on_termination?: bool
					encrypted?:             bool
					iops?:                  number
					kms_key_id?:            string
					snapshot_id?:           string
					throughput?:            number
					volume_size?:           number
					volume_type?:           string
				})]
				no_device?:    string
				virtual_name?: string
			})]
			image?: string
		})]
		kms_key_id?:   string
		name?:         string
		owner?:        string
		parent_image?: string
		platform?:     string
		tags?: [string]: string
		target_repository?: [...close({
			repository_name?: string
			service?:         string
		})]
		version?:           string
		working_directory?: string
	})
}
