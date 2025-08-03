package data

#aws_redshift_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster")
	close({
		allow_version_upgrade?:                bool
		aqua_configuration_status?:            string
		arn?:                                  string
		automated_snapshot_retention_period?:  number
		availability_zone?:                    string
		availability_zone_relocation_enabled?: bool
		bucket_name?:                          string
		cluster_identifier!:                   string
		cluster_namespace_arn?:                string
		cluster_nodes?: [...close({
			node_role?:          string
			private_ip_address?: string
			public_ip_address?:  string
		})]
		cluster_parameter_group_name?: string
		cluster_public_key?:           string
		cluster_revision_number?:      string
		cluster_subnet_group_name?:    string
		cluster_type?:                 string
		cluster_version?:              string
		database_name?:                string
		default_iam_role_arn?:         string
		elastic_ip?:                   string
		enable_logging?:               bool
		encrypted?:                    bool
		endpoint?:                     string
		enhanced_vpc_routing?:         bool
		iam_roles?: [...string]
		id?:                   string
		kms_key_id?:           string
		log_destination_type?: string
		log_exports?: [...string]
		maintenance_track_name?:           string
		manual_snapshot_retention_period?: number
		master_username?:                  string
		multi_az?:                         bool
		node_type?:                        string
		number_of_nodes?:                  number
		port?:                             number
		preferred_maintenance_window?:     string
		publicly_accessible?:              bool
		region?:                           string
		s3_key_prefix?:                    string
		tags?: [string]: string
		vpc_id?: string
		vpc_security_group_ids?: [...string]
	})
}
