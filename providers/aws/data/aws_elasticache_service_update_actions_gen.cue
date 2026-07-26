package data

aws_elasticache_service_update_actions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_elasticache_service_update_actions")
	close({
		cache_cluster_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		replication_group_id?: string
		service_update_status?: [...string]
		update_actions?: [...close({
			cache_cluster_id?:          string
			engine?:                    string
			estimated_update_time?:     string
			recommended_apply_by_date?: string
			release_date?:              string
			replication_group_id?:      string
			service_update_name?:       string
			service_update_severity?:   string
			service_update_status?:     string
			service_update_type?:       string
			update_action_status?:      string
		})]
	})
}
