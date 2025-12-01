package data

#aws_rds_global_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_rds_global_cluster")
	close({
		arn?:                 string
		database_name?:       string
		deletion_protection?: bool
		endpoint?:            string
		engine?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		engine_lifecycle_support?: string
		engine_version?:           string
		identifier!:               string
		members?: [...close({
			db_cluster_arn?: string
			is_writer?:      bool
		})]
		resource_id?:       string
		storage_encrypted?: bool
		tags?: [string]: string
	})
}
