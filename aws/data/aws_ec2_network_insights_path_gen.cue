package data

#aws_ec2_network_insights_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_network_insights_path")
	close({
		arn?:              string
		destination?:      string
		destination_arn?:  string
		destination_ip?:   string
		destination_port?: number
		filter_at_destination?: [...close({
			destination_address?: string
			destination_port_range?: [...close({
				from_port?: number
				to_port?:   number
			})]
			source_address?: string
			source_port_range?: [...close({
				from_port?: number
				to_port?:   number
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		filter_at_source?: [...close({
			destination_address?: string
			destination_port_range?: [...close({
				from_port?: number
				to_port?:   number
			})]
			source_address?: string
			source_port_range?: [...close({
				from_port?: number
				to_port?:   number
			})]
		})]
		filter?: matchN(1, [#filter, [...#filter]])
		id?:                       string
		network_insights_path_id?: string
		protocol?:                 string
		source?:                   string
		source_arn?:               string
		source_ip?:                string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
