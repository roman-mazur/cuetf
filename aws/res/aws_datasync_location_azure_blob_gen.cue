package res

import "list"

#aws_datasync_location_azure_blob: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_azure_blob")
	access_tier?: string
	agent_arns!: [...string]
	arn?:                 string
	authentication_type!: string
	blob_type?:           string
	container_url!:       string
	id?:                  string
	subdirectory?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	uri?: string
	sas_configuration?: #sas_configuration | list.MaxItems(1) & [...#sas_configuration]

	#sas_configuration: token!: string
}
