package res

import "list"

#aws_redshift_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_cluster")
	allow_version_upgrade?:                bool
	apply_immediately?:                    bool
	arn?:                                  string
	automated_snapshot_retention_period?:  number
	availability_zone?:                    string
	availability_zone_relocation_enabled?: bool
	cluster_identifier!:                   string
	cluster_namespace_arn?:                string
	cluster_nodes?: [...{
		node_role?:          string
		private_ip_address?: string
		public_ip_address?:  string
	}]
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
	encrypted?:                    bool
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
	master_username?:                   string
	multi_az?:                          bool
	node_type!:                         string
	number_of_nodes?:                   number
	owner_account?:                     string
	port?:                              number
	preferred_maintenance_window?:      string
	publicly_accessible?:               bool
	skip_final_snapshot?:               bool
	snapshot_arn?:                      string
	snapshot_cluster_identifier?:       string
	snapshot_identifier?:               string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_security_group_ids?: [...string]
	logging?: #logging | list.MaxItems(1) & [...#logging]
	snapshot_copy?: #snapshot_copy | list.MaxItems(1) & [...#snapshot_copy]
	timeouts?: #timeouts

	#logging: {
		bucket_name?:          string
		enable!:               bool
		log_destination_type?: string
		log_exports?: [...string]
		s3_key_prefix?: string
	}

	#snapshot_copy: {
		destination_region!: string
		grant_name?:         string
		retention_period?:   number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
