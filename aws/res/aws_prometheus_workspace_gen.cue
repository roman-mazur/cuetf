package res

import "list"

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_workspace")
	close({
		alias?: string
		arn?:   string
		id?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		kms_key_arn?:         string
		prometheus_endpoint?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [...#logging_configuration]])
	})

	#logging_configuration: close({
		log_group_arn!: string
	})
}
