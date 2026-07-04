package data

#aws_ec2_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_host")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:        #timeouts
		allocation_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		allows_multiple_instance_types?: string
		arn?:                            string
		asset_id?:                       string
		auto_placement?:                 string
		availability_zone?:              string
		availability_zone_id?:           string
		available_capacity?: [...close({
			available_instance_capacity?: [...close({
				available_capacity?: number
				instance_type?:      string
				total_capacity?:     number
			})]
			available_vcpus?: number
		})]
		cores?:               number
		host_id?:             string
		host_maintenance?:    string
		host_recovery?:       string
		host_reservation_id?: string
		id?:                  string
		instance_family?:     string
		instance_type?:       string
		instances?: [...close({
			instance_id?:   string
			instance_type?: string
			owner_id?:      string
		})]
		member_of_service_linked_resource_group?: bool
		outpost_arn?:                             string
		owner_id?:                                string
		release_time?:                            string
		sockets?:                                 number
		state?:                                   string
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
