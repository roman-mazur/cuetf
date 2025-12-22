package res

import "list"

#aws_datasync_location_azure_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_datasync_location_azure_blob")
	close({
		access_tier?: string
		agent_arns!: [...string]
		arn?:                 string
		authentication_type!: string
		blob_type?:           string
		container_url!:       string
		sas_configuration?: matchN(1, [#sas_configuration, list.MaxItems(1) & [...#sas_configuration]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		id?:           string
		subdirectory?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})

	#sas_configuration: close({
		token!: string
	})
}
