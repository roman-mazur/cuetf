package data

#aws_imagebuilder_image_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_image_recipe")
	close({
		ami_tags?: [string]: string
		arn!: string
		block_device_mapping?: [...close({
			device_name?: string
			ebs?: [...close({
				delete_on_termination?: string
				encrypted?:             string
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
		component?: [...close({
			component_arn?: string
			parameter?: [...close({
				name?:  string
				value?: string
			})]
		})]
		date_created?: string
		description?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		id?:           string
		name?:         string
		owner?:        string
		parent_image?: string
		platform?:     string
		tags?: [string]: string
		user_data_base64?:  string
		version?:           string
		working_directory?: string
	})
}
