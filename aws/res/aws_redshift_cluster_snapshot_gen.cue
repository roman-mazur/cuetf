package res

#aws_redshift_cluster_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_cluster_snapshot")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		arn?:                              string
		cluster_identifier!:               string
		id?:                               string
		kms_key_id?:                       string
		manual_snapshot_retention_period?: number
		owner_account?:                    string
		snapshot_identifier!:              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
