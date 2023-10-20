package res

import "list"

#aws_chimesdkvoice_sip_media_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chimesdkvoice_sip_media_application")
	arn?:       string
	aws_region: string
	id?:        string
	name:       string
	tags?: [string]: string
	tags_all?: [string]: string
	endpoints?: #endpoints | list.MaxItems(1) & [_, ...] & [...#endpoints]

	#endpoints: lambda_arn: string
}
