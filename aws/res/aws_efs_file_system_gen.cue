package res

import "list"

#aws_efs_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_efs_file_system")
	close({
		arn?:                    string
		availability_zone_id?:   string
		availability_zone_name?: string
		creation_token?:         string
		dns_name?:               string
		encrypted?:              bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		id?:         string
		kms_key_id?: string
		name?:       string
		lifecycle_policy?: matchN(1, [#lifecycle_policy, list.MaxItems(3) & [...#lifecycle_policy]])
		protection?: matchN(1, [#protection, list.MaxItems(1) & [...#protection]])
		number_of_mount_targets?:         number
		owner_id?:                        string
		performance_mode?:                string
		provisioned_throughput_in_mibps?: number
		size_in_bytes?: [...close({
			value?:             number
			value_in_ia?:       number
			value_in_standard?: number
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
		throughput_mode?: string
	})

	#lifecycle_policy: close({
		transition_to_archive?:               string
		transition_to_ia?:                    string
		transition_to_primary_storage_class?: string
	})

	#protection: close({
		replication_overwrite?: string
	})
}
