package data

#aws_efs_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_efs_file_system")
	close({
		arn?:                    string
		availability_zone_id?:   string
		availability_zone_name?: string
		creation_token?:         string
		dns_name?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		encrypted?:      bool
		file_system_id?: string
		id?:             string
		kms_key_id?:     string
		lifecycle_policy?: [...close({
			transition_to_archive?:               string
			transition_to_ia?:                    string
			transition_to_primary_storage_class?: string
		})]
		name?:             string
		performance_mode?: string
		protection?: [...close({
			replication_overwrite?: string
		})]
		provisioned_throughput_in_mibps?: number
		size_in_bytes?:                   number
		tags?: [string]: string
		throughput_mode?: string
	})
}
