package res

#aws_datazone_form_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_form_type")
	close({
		created_at?:        string
		created_by?:        string
		description?:       string
		domain_identifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		imports?: [...close({
			name?:     string
			revision?: string
		})]
		name!: string
		model?: matchN(1, [#model, [...#model]])
		timeouts?:                  #timeouts
		origin_domain_id?:          string
		origin_project_id?:         string
		owning_project_identifier!: string
		revision?:                  string
		status?:                    string
	})

	#model: close({
		smithy!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
