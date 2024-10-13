package res

import "list"

#aws_datasync_location_nfs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_nfs")
	arn?:             string
	id?:              string
	server_hostname!: string
	subdirectory!:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	uri?: string
	mount_options?: #mount_options | list.MaxItems(1) & [...#mount_options]
	on_prem_config?: #on_prem_config | list.MaxItems(1) & [_, ...] & [...#on_prem_config]

	#mount_options: version?: string

	#on_prem_config: agent_arns!: [...string]
}
