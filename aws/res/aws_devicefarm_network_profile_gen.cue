package res

#aws_devicefarm_network_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_network_profile")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		arn?:                     string
		description?:             string
		downlink_bandwidth_bits?: number
		downlink_delay_ms?:       number
		downlink_jitter_ms?:      number
		downlink_loss_percent?:   number
		id?:                      string
		name!:                    string
		project_arn!:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:                  string
		uplink_bandwidth_bits?: number
		uplink_delay_ms?:       number
		uplink_jitter_ms?:      number
		uplink_loss_percent?:   number
	})
}
