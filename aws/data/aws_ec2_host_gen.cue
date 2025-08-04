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
		host_id?:           string
		host_recovery?:     string
		id?:                string
		filter?: matchN(1, [#filter, [...#filter]])
		instance_family?: string
		instance_type?:   string
		outpost_arn?:     string
		timeouts?:        #timeouts
		owner_id?:        string
		region?:          string
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
