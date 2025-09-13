package data

#aws_ec2_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_host")
	close({
		arn?:               string
		asset_id?:          string
		auto_placement?:    string
		availability_zone?: string
		cores?:             number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		host_id?:       string
		host_recovery?: string
		id?:            string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:        #timeouts
		instance_family?: string
		instance_type?:   string
		outpost_arn?:     string
		owner_id?:        string
		sockets?:         number
		tags?: [string]: string
		total_vcpus?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
