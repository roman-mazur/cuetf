package res

import "list"

#google_iap_tunnel_dest_group_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iap_tunnel_dest_group_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		dest_group!: string
		etag?:       string
		id?:         string
		member!:     string
		project?:    string
		region?:     string
		role!:       string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
