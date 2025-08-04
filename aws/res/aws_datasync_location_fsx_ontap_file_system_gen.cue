package res

import "list"

#aws_datasync_location_fsx_ontap_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_fsx_ontap_file_system")
	close({
		arn?:                string
		creation_time?:      string
		fsx_filesystem_arn?: string
		id?:                 string
		region?:             string
		security_group_arns!: [...string]
		storage_virtual_machine_arn!: string
		subdirectory?:                string
		tags?: [string]: string
		protocol?: matchN(1, [#protocol, list.MaxItems(1) & [_, ...] & [...#protocol]])
		tags_all?: [string]: string
		uri?: string
	})

	#protocol: close({
		nfs?: matchN(1, [_#defs."/$defs/protocol/$defs/nfs", list.MaxItems(1) & [..._#defs."/$defs/protocol/$defs/nfs"]])
		smb?: matchN(1, [_#defs."/$defs/protocol/$defs/smb", list.MaxItems(1) & [..._#defs."/$defs/protocol/$defs/smb"]])
	})

	_#defs: "/$defs/protocol/$defs/nfs": close({
		mount_options?: matchN(1, [_#defs."/$defs/protocol/$defs/nfs/$defs/mount_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/protocol/$defs/nfs/$defs/mount_options"]])
	})

	_#defs: "/$defs/protocol/$defs/nfs/$defs/mount_options": close({
		version?: string
	})

	_#defs: "/$defs/protocol/$defs/smb": close({
		mount_options?: matchN(1, [_#defs."/$defs/protocol/$defs/smb/$defs/mount_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/protocol/$defs/smb/$defs/mount_options"]])
		domain?:   string
		password!: string
		user!:     string
	})

	_#defs: "/$defs/protocol/$defs/smb/$defs/mount_options": close({
		version?: string
	})
}
