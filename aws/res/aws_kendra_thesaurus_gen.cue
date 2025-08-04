package res

import "list"

#aws_kendra_thesaurus: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_thesaurus")
	close({
		arn?:         string
		description?: string
		id?:          string
		index_id!:    string
		name!:        string
		region?:      string
		source_s3_path?: matchN(1, [#source_s3_path, list.MaxItems(1) & [_, ...] & [...#source_s3_path]])
		role_arn!: string
		status?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		thesaurus_id?: string
	})

	#source_s3_path: close({
		bucket!: string
		key!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
