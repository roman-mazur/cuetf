package res

import "list"

#aws_efs_backup_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_backup_policy")
	file_system_id: string
	id?:            string
	backup_policy?: #backup_policy | list.MaxItems(1) & [_, ...] & [...#backup_policy]

	#backup_policy: status: string
}
