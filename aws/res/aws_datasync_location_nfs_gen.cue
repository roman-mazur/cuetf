package res

import "list"

#aws_datasync_location_nfs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_nfs")
	close({
		arn?: string
		id?:  string
		mount_options?: matchN(1, [#mount_options, list.MaxItems(1) & [...#mount_options]])
		on_prem_config?: matchN(1, [#on_prem_config, list.MaxItems(1) & [_, ...] & [...#on_prem_config]])
		region?:          string
		server_hostname!: string
		subdirectory!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})

	#mount_options: close({
		version?: string
	})

	#on_prem_config: close({
		agent_arns!: [...string]
	})
}
