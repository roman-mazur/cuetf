package res

import "list"

#google_iap_web_region_forwarding_rule_service_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iap_web_region_forwarding_rule_service_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:                                string
		forwarding_rule_region_service_name!: string
		id?:                                  string
		members!: [...string]
		project?: string
		region?:  string
		role!:    string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
