package res

import "list"

#aws_dms_replication_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_replication_config")
	arn?:                          string
	id?:                           string
	replication_config_identifier: string
	replication_settings?:         string
	replication_type:              string
	resource_identifier?:          string
	source_endpoint_arn:           string
	start_replication?:            bool
	supplemental_settings?:        string
	table_mappings:                string
	tags?: [string]: string
	tags_all?: [string]: string
	target_endpoint_arn: string
	compute_config?:     #compute_config | list.MaxItems(1) & [_, ...] & [...#compute_config]
	timeouts?:           #timeouts

	#compute_config: {
		availability_zone?:            string
		dns_name_servers?:             string
		kms_key_id?:                   string
		max_capacity_units?:           number
		min_capacity_units?:           number
		multi_az?:                     bool
		preferred_maintenance_window?: string
		replication_subnet_group_id:   string
		vpc_security_group_ids?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
