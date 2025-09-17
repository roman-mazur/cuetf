package data

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_oam_link")
	close({
		arn?:            string
		id?:             string
		label?:          string
		label_template?: string
		link_configuration?: [...close({
			log_group_configuration?: [...close({
				filter?: string
			})]
			metric_configuration?: [...close({
				filter?: string
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		link_id?:         string
		link_identifier!: string
		resource_types?: [...string]
		sink_arn?: string
		tags?: [string]: string
	})
}
