package res

#aws_networkfirewall_vpc_endpoint_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_vpc_endpoint_association")
	close({
		description?:  string
		firewall_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_association_arn?: string
		vpc_endpoint_association_id?:  string
		vpc_endpoint_association_status?: [...close({
			association_sync_state?: [...close({
				attachment?: [...close({
					endpoint_id?:    string
					status?:         string
					status_message?: string
					subnet_id?:      string
				})]
				availability_zone?: string
			})]
		})]
		subnet_mapping?: matchN(1, [#subnet_mapping, [...#subnet_mapping]])
		timeouts?: #timeouts
		vpc_id!:   string
	})

	#subnet_mapping: close({
		ip_address_type?: string
		subnet_id!:       string
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
	})
}
