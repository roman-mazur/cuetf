package res

#aws_guardduty_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_ipset")
	close({
		activate!:    bool
		arn?:         string
		detector_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		format!:   string
		id?:       string
		location!: string
		name!:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
