package res

#aws_cloudhsm_v2_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudhsm_v2_cluster")
	cluster_certificates?: [...{
		aws_hardware_certificate?:          string
		cluster_certificate?:               string
		cluster_csr?:                       string
		hsm_certificate?:                   string
		manufacturer_hardware_certificate?: string
	}]
	cluster_id?:               string
	cluster_state?:            string
	hsm_type!:                 string
	id?:                       string
	mode?:                     string
	security_group_id?:        string
	source_backup_identifier?: string
	subnet_ids!: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?:   string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
