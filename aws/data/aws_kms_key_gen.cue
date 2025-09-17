package data

#aws_kms_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_key")
	close({
		arn?:                  string
		aws_account_id?:       string
		cloud_hsm_cluster_id?: string
		creation_date?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		custom_key_store_id?:      string
		customer_master_key_spec?: string
		deletion_date?:            string
		description?:              string
		enabled?:                  bool
		expiration_model?:         string
		grant_tokens?: [...string]
		id?:           string
		key_id!:       string
		key_manager?:  string
		key_spec?:     string
		key_state?:    string
		key_usage?:    string
		multi_region?: bool
		multi_region_configuration?: [...close({
			multi_region_key_type?: string
			primary_key?: [...close({
				arn?:    string
				region?: string
			})]
			replica_keys?: [...close({
				arn?:    string
				region?: string
			})]
		})]
		origin?:                          string
		pending_deletion_window_in_days?: number
		valid_to?:                        string
		xks_key_configuration?: [...close({
			id?: string
		})]
	})
}
