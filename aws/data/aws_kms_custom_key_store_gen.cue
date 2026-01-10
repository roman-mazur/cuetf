package data

#aws_kms_custom_key_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_kms_custom_key_store")
	close({
		cloud_hsm_cluster_id?: string
		connection_state?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		creation_date?:            string
		custom_key_store_id?:      string
		custom_key_store_name?:    string
		id?:                       string
		trust_anchor_certificate?: string
	})
}
