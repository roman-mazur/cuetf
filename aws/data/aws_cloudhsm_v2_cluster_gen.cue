package data

#aws_cloudhsm_v2_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudhsm_v2_cluster")
	cluster_certificates?: [...{
		aws_hardware_certificate?:          string
		cluster_certificate?:               string
		cluster_csr?:                       string
		hsm_certificate?:                   string
		manufacturer_hardware_certificate?: string
	}]
	cluster_id!:        string
	cluster_state?:     string
	id?:                string
	security_group_id?: string
	subnet_ids?: [...string]
	vpc_id?: string
}
