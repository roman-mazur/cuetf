package res

import "list"

#aws_datasync_location_smb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_smb")
	agent_arns: [...string]
	arn?:            string
	domain?:         string
	id?:             string
	password:        string
	server_hostname: string
	subdirectory:    string
	tags?: [string]: string
	tags_all?: [string]: string
	uri?:           string
	user:           string
	mount_options?: #mount_options | list.MaxItems(1) & [...#mount_options]

	#mount_options: version?: string
}
