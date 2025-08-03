package res

import "list"

#aws_datasync_location_smb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_smb")
	close({
		agent_arns!: [...string]
		arn?:             string
		domain?:          string
		id?:              string
		password!:        string
		region?:          string
		server_hostname!: string
		subdirectory!:    string
		mount_options?: matchN(1, [#mount_options, list.MaxItems(1) & [...#mount_options]])
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?:  string
		user!: string
	})

	#mount_options: close({
		version?: string
	})
}
