package data

aws_elasticache_service_updates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_elasticache_service_updates")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		service_updates?: [...close({
			auto_update_after_recommended_apply_by_date?: bool
			description?:                                 string
			end_date?:                                    string
			engine?:                                      string
			engine_version?:                              string
			estimated_update_time?:                       string
			name?:                                        string
			recommended_apply_by_date?:                   string
			release_date?:                                string
			severity?:                                    string
			status?:                                      string
			type?:                                        string
		})]
		status?: [...string]
	})
}
