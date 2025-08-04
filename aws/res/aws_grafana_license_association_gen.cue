package res

#aws_grafana_license_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_license_association")
	close({
		free_trial_expiration?: string
		grafana_token?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		id?:                 string
		license_expiration?: string
		license_type!:       string
		workspace_id!:       string
		timeouts?:           #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
