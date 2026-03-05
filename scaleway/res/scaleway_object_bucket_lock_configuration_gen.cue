package res

import "list"

#scaleway_object_bucket_lock_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket_lock_configuration")
	close({
		rule!: matchN(1, [#rule, list.MaxItems(1) & [_, ...] & [...#rule]])

		// The bucket's name or regional ID.
		bucket!: string
		id?:     string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})

	#rule: close({
		default_retention!: matchN(1, [_#defs."/$defs/rule/$defs/default_retention", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/default_retention"]])
	})

	_#defs: "/$defs/rule/$defs/default_retention": close({
		// The number of days that you want to specify for the default
		// retention period.
		days?: number

		// The default Object Lock retention mode you want to apply to new
		// objects placed in the specified bucket.
		mode!: string

		// The number of years that you want to specify for the default
		// retention period.
		years?: number
	})
}
