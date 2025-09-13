package data

#aws_ebs_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_volume")
	close({
		arn?:                  string
		availability_zone?:    string
		create_time?:          string
		encrypted?:            bool
		id?:                   string
		iops?:                 number
		kms_key_id?:           string
		most_recent?:          bool
		multi_attach_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:    #timeouts
		outpost_arn?: string
		size?:        number
		snapshot_id?: string
		tags?: [string]: string
		throughput?:                 number
		volume_id?:                  string
		volume_initialization_rate?: number
		volume_type?:                string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
