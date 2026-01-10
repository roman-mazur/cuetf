package res

#aws_db_proxy_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_db_proxy_target")
	close({
		db_cluster_identifier?:  string
		db_instance_identifier?: string
		db_proxy_name!:          string
		endpoint?:               string
		id?:                     string
		port?:                   number
		rds_resource_id?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		target_arn?:         string
		target_group_name!:  string
		tracked_cluster_id?: string
		type?:               string
	})
}
