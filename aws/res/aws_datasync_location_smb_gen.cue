package res

import "list"

#aws_datasync_location_smb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_datasync_location_smb")
	close({
		agent_arns!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		arn?:      string
		domain?:   string
		id?:       string
		password!: string
		mount_options?: matchN(1, [#mount_options, list.MaxItems(1) & [...#mount_options]])
		server_hostname!: string
		subdirectory!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?:  string
		user!: string
	})

	#mount_options: close({
		version?: string
	})
}
