package res

import "list"

#aws_efs_backup_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_backup_policy")
	close({
		file_system_id!: string
		id?:             string
		region?:         string
		backup_policy?: matchN(1, [#backup_policy, list.MaxItems(1) & [_, ...] & [...#backup_policy]])
	})

	#backup_policy: close({
		status!: string
	})
}
