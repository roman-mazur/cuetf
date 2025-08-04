package res

#aws_kms_replica_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_replica_key")
	close({
		arn?:                                string
		bypass_policy_lockout_safety_check?: bool
		deletion_window_in_days?:            number
		description?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		enabled?:              bool
		id?:                   string
		key_id?:               string
		key_rotation_enabled?: bool
		key_spec?:             string
		key_usage?:            string
		policy?:               string
		primary_key_arn!:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
