package res

#aws_servicecatalog_provisioning_artifact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_provisioning_artifact")
	close({
		accept_language?:             string
		active?:                      bool
		created_time?:                string
		description?:                 string
		disable_template_validation?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		guidance?:                 string
		id?:                       string
		timeouts?:                 #timeouts
		name?:                     string
		product_id!:               string
		provisioning_artifact_id?: string
		template_physical_id?:     string
		template_url?:             string
		type?:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
