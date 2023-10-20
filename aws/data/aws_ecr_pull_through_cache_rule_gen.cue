package data

#aws_ecr_pull_through_cache_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_pull_through_cache_rule")
	ecr_repository_prefix:  string
	id?:                    string
	registry_id?:           string
	upstream_registry_url?: string
}
