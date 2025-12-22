package res

import "list"

#aws_lambda_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_alias")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		description?:      string
		function_name!:    string
		function_version!: string
		id?:               string
		invoke_arn?:       string
		name!:             string
		routing_config?: matchN(1, [#routing_config, list.MaxItems(1) & [...#routing_config]])
	})

	#routing_config: close({
		additional_version_weights?: [string]: number
	})
}
