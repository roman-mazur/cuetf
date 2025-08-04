package res

#aws_redshift_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster")
	close({
		allow_version_upgrade?:                bool
		apply_immediately?:                    bool
		arn?:                                  string
		automated_snapshot_retention_period?:  number
		availability_zone?:                    string
		availability_zone_relocation_enabled?: bool
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
		dns_name?:                     string
		elastic_ip?:                   string
		encrypted?:                    string
		endpoint?:                     string
		enhanced_vpc_routing?:         bool
		final_snapshot_identifier?:    string
		iam_roles?: [...string]
		id?:                                string
		kms_key_id?:                        string
		maintenance_track_name?:            string
		manage_master_password?:            bool
		manual_snapshot_retention_period?:  number
		master_password?:                   string
		master_password_secret_arn?:        string
		master_password_secret_kms_key_id?: string
		master_password_wo?:                string
		master_password_wo_version?:        number
		master_username?:                   string
		multi_az?:                          bool
		node_type!:                         string
		number_of_nodes?:                   number
		owner_account?:                     string
		port?:                              number
		preferred_maintenance_window?:      string
		publicly_accessible?:               bool
		region?:                            string
		skip_final_snapshot?:               bool
		snapshot_arn?:                      string
		snapshot_cluster_identifier?:       string
		snapshot_identifier?:               string
		timeouts?:                          #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
