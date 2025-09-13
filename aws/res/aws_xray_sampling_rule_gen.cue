package res

#aws_xray_sampling_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_xray_sampling_rule")
	close({
		arn?: string
		attributes?: [string]: string
		fixed_rate!:  number
		host!:        string
		http_method!: string
		id?:          string
		priority!:    number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		reservoir_size!: number
		resource_arn!:   string
		rule_name?:      string
		service_name!:   string
		service_type!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		url_path!: string
		version!:  number
	})
}
