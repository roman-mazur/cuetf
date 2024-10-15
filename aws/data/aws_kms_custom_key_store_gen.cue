package data

#aws_kms_custom_key_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_custom_key_store")
	cloud_hsm_cluster_id?:     string
	connection_state?:         string
	creation_date?:            string
	custom_key_store_id?:      string
	custom_key_store_name?:    string
	id?:                       string
	trust_anchor_certificate?: string
}
