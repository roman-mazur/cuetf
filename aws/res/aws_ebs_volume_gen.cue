package res

#aws_ebs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ebs_volume")
	close({
		arn?:                  string
		availability_zone!:    string
		create_time?:          string
		encrypted?:            bool
		final_snapshot?:       bool
		id?:                   string
		iops?:                 number
		kms_key_id?:           string
		multi_attach_enabled?: bool
		outpost_arn?:          string
		timeouts?:             #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		size?:        number
		snapshot_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput?:                 number
		type?:                       string
		volume_initialization_rate?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
