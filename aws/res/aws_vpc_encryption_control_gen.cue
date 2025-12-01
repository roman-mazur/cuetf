package res

#aws_vpc_encryption_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpc_encryption_control")
	close({
		egress_only_internet_gateway_exclusion?: string
		elastic_file_system_exclusion?:          string
		id?:                                     string
		internet_gateway_exclusion?:             string
		lambda_exclusion?:                       string
		mode!:                                   string
		nat_gateway_exclusion?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resource_exclusions?: close({
			egress_only_internet_gateway?: close({
				state?:         string
				state_message?: string
			})
			elastic_file_system?: close({
				state?:         string
				state_message?: string
			})
			internet_gateway?: close({
				state?:         string
				state_message?: string
			})
			lambda?: close({
				state?:         string
				state_message?: string
			})
			nat_gateway?: close({
				state?:         string
				state_message?: string
			})
			virtual_private_gateway?: close({
				state?:         string
				state_message?: string
			})
			vpc_lattice?: close({
				state?:         string
				state_message?: string
			})
			vpc_peering?: close({
				state?:         string
				state_message?: string
			})
		})
		timeouts?:      #timeouts
		state?:         string
		state_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		virtual_private_gateway_exclusion?: string
		vpc_id!:                            string
		vpc_lattice_exclusion?:             string
		vpc_peering_exclusion?:             string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
