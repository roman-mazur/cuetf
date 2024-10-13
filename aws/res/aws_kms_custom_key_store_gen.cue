package res

#aws_kms_custom_key_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kms_custom_key_store")
	cloud_hsm_cluster_id!:     string
	custom_key_store_name!:    string
	id?:                       string
	key_store_password!:       string
	trust_anchor_certificate!: string
	timeouts?:                 #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
