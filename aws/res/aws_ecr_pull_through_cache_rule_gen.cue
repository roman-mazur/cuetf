package res

#aws_ecr_pull_through_cache_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_pull_through_cache_rule")
	credential_arn?:        string
	ecr_repository_prefix!: string
	id?:                    string
	registry_id?:           string
	upstream_registry_url!: string
}
