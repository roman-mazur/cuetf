package res

import "list"

#aws_servicecatalog_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_product")
	close({
		accept_language?: string
		provisioning_artifact_parameters?: matchN(1, [#provisioning_artifact_parameters, list.MaxItems(1) & [_, ...] & [...#provisioning_artifact_parameters]])
		arn?:              string
		created_time?:     string
		description?:      string
		distributor?:      string
		has_default_path?: bool
		id?:               string
		name!:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		owner!:               string
		timeouts?:            #timeouts
		status?:              string
		support_description?: string
		support_email?:       string
		support_url?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#provisioning_artifact_parameters: close({
		description?:                 string
		disable_template_validation?: bool
		name?:                        string
		template_physical_id?:        string
		template_url?:                string
		type?:                        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
