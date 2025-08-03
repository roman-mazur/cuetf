package res

#aws_db_proxy_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy_target")
	close({
		db_cluster_identifier?:  string
		db_instance_identifier?: string
		db_proxy_name!:          string
		endpoint?:               string
		id?:                     string
		port?:                   number
		rds_resource_id?:        string
		region?:                 string
		target_arn?:             string
		target_group_name!:      string
		tracked_cluster_id?:     string
		type?:                   string
	})
}
