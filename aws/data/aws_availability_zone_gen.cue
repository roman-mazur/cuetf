package data

#aws_availability_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_availability_zone")
	close({
		all_availability_zones?: bool
		group_long_name?:        string
		group_name?:             string
		id?:                     string
		name?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		name_suffix?:          string
		network_border_group?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:         #timeouts
		opt_in_status?:    string
		parent_zone_id?:   string
		parent_zone_name?: string
		state?:            string
		zone_id?:          string
		zone_type?:        string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
